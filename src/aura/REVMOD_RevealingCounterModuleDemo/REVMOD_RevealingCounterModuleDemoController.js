({
	demonstrate : function(component, event, helper) {
		console.log('####### START');
		$Jsdp.LxLogger.logger = component.find('logger');
		$Jsdp.CounterModule.start();
		console.log('####### END');
	}
})