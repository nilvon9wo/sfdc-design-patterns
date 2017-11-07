({
	demonstrate : function(component, event, helper) {
		$Jsdp.LxLogger.logger = component.find('logger');
		var logger = $Jsdp.LxLogger.logger; 
		
		var singleA = $Jsdp.Singleton.getInstance();
		var singleB = $Jsdp.Singleton.getInstance();
		logger.log('Same Instance: ' +  (singleA.getRandomNumber() === singleB.getRandomNumber()));
		
		var badSingleA = $Jsdp.BadSingleton.getInstance();
		var badSingleB = $Jsdp.BadSingleton.getInstance();
		logger.log('Different Instance: ' + (badSingleA.getRandomNumber() !== badSingleB.getRandomNumber()));
	}
})