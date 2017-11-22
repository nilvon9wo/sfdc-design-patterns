({
	demonstrate : function(component, event, helper) {
		$Jsdp.EventBus2.subscribe('/new/user', helper.appendUserTemplate(component));
		$Jsdp.EventBus2.subscribe('/new/rating', helper.appendRatingsTemplate(component));
	},
	
	addNewUser: function(component, event, helper) {
		$Jsdp.EventBus2.publish('/new/user', {
			name: component.get('v.twitterHandle')
		}); 

		$Jsdp.EventBus2.publish('/new/rating', {
			title: component.get('v.movieSeen'),
			rating: component.get('v.movieRating')
		});
	}
})