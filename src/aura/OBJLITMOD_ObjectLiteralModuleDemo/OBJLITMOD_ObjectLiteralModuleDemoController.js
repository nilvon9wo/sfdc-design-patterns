({
	demonstrate : function(component, event, helper) {
		$Jsdp.LxLogger.logger = component.find('logger');
		$Jsdp.DemoModule.saySomething();
		$Jsdp.DemoModule.reportConfig();
		
		var newConfig = {
			useCaching: false,
			language: 'fr'
		};
		$Jsdp.DemoModule.updateConfig(newConfig);
		$Jsdp.DemoModule.reportConfig();
	}
})