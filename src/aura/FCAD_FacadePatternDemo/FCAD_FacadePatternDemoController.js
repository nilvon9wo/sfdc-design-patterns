({
	demonstrate : function(component, event, helper) {
		$Jsdp.LxLogger.logger = component.find('logger');
		
		$Jsdp.SomeModule.facade({
			run: true,
			value: 10
		});
	}
})