({
	demonstrate : function(component, event, helper) {
		$Jsdp.LxLogger.logger = component.find('logger');
		var logger = $Jsdp.LxLogger.logger; 

		var singletonTest = $Jsdp.SingletonTester.getInstance({pointX: 5});
		logger.log('Point X:' + singletonTest.pointX);
	}
})