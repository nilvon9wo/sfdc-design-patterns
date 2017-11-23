({
	demonstrate : function(component, event, helper) {
		$Jsdp.EventBus2.subscribe('/search/tags', helper.displayLastQuery(component));
		$Jsdp.EventBus2.subscribe('/search/resultSet', helper.performSearch(component));
		$Jsdp.EventBus2.subscribe('/search/tags', helper.displayResultTemplate(component));
	},
	
	searchFlicker : function(component, event, helper) {
		var tags = component.get('v.tags').trim();
		if (tags) {
			$Jsdp.EventBus2.publish('/search/tags', [tags]);
		}
	}
})