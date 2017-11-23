({
	demonstrate : function(component, event, helper) {
		$Jsdp.LxLogger.logger = component.find('logger');
		var logger = $Jsdp.LxLogger.logger; 
		
		var macbook = new $Jsdp.MacBook();
		$Jsdp.Decorators.memory(macbook);
		$Jsdp.Decorators.engraving(macbook);
		$Jsdp.Decorators.insurance(macbook);
		
		logger.log(macbook.cost());
		logger.log(macbook.screenSize());
	}
}) 