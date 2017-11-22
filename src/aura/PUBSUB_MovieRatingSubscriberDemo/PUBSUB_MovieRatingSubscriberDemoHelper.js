({
	appendUserTemplate : function(component) {
		var auraElement = 'c:PUBSUB_MovieRatingUser'
		var callback = this.appendToList(component, 'users');
		return $A.getCallback(this.appendTemplate(auraElement, callback));
	},

	appendRatingsTemplate : function(component) {
		var auraElement = 'c:PUBSUB_MovieRatingRatings'
		var callback = this.appendToList(component, 'ratings');
		return $A.getCallback(this.appendTemplate(auraElement, callback));
	},
	
	appendTemplate: function (auraElement, callback) {
		return function(topic, data) {
			if (data) {
				var params = data;
				$A.createComponent(auraElement, data, callback);
			}
		};
	},

	appendToList: function(component, auraId) {
		return function(newElement, status, errorMessage) {
			if (status === 'SUCCESS') {
				var renderBox = component.find(auraId);
				var body = renderBox.get('v.body') || [];
				body.push(newElement); 
				renderBox.set('v.body', body);	
			}
			else {
				console.error('Something went wrong!:', errorMessage);
			}
		};
	}
})