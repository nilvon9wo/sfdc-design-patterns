({
	demonstrate : function(component, event, helper) {
		$Jsdp.LxLogger.logger = component.find('logger');
		var logger = $Jsdp.LxLogger.logger; 
		
		_.extend($Jsdp.CarAnimator.prototype, $Jsdp.UtilityFunctions)
		_.extend($Jsdp.PersonAnimator.prototype, $Jsdp.UtilityFunctions)
		
		var carAnimator = new $Jsdp.CarAnimator();
		carAnimator.moveLeft();
		carAnimator.moveDown();
		carAnimator.stop();
	}
})