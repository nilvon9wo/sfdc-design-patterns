({
	displayLastQuery : function(component) {
		return function(topic, tags) {
			component.find('lastQuery')
				.getElement()
				.innerHTML = '<p> Searched for: '
								+ '<strong>' + tags + '</strong>'
							+ '</p>';
		}
	},
	
	performSearch : function(component) {
		var self = this;
		return function(topic, tags) {
			var params = {results: tags};
			$A.createComponent('c:PUBSUB_FlickerSearchResults', params, self.appendResults(component));
		};
	},
	
	appendResults : function(component) {
		return function(newElement, status, errorMessage) {
			if (status === 'SUCCESS') {
				var renderBox = component.find('searchResults');
				var body = renderBox.get('v.body') || [];
				body.push(newElement); 
				renderBox.set('v.body', body);	
			}
			else {
				console.error('Something went wrong!:', errorMessage);
			}	
		};
	},
	
	displayResultTemplate : function(component) {
		var self = this;
		return function(topic, tags) {
			var params = {
				tags: tags,
				tagmode: 'any',
				format: 'json'
            };
			$.getJSON(
				'http://api.flickr.com/services/feeds/photos_public.gne?jsoncallback=?',
				params, 
				self.publishResultSet
			);
       }
	},
	
	publishResultSet: function(data) {
		if (data && data.items && data.items.length) {
			$Jsdp.EventBus2.publish('/search/resultSet', data.items);
		}
	}
})