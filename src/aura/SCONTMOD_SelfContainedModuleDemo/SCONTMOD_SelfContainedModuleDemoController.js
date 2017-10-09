({
	demonstrate : function(component, event, helper) {
		$Jsdp.LxLogger.logger = component.find('logger');
		$Jsdp.DemoModule.incrementCounter();
		$Jsdp.DemoModule.resetCounter();
	}
})