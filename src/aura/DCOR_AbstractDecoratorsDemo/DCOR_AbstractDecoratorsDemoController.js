({
	demonstrate : function(component, event, helper) {
		$Jsdp.LxLogger.logger = component.find('logger');
		var logger = $Jsdp.LxLogger.logger; 
	
		var macbookpro = new $Jsdp.MacBookPro();
		logger.log(macbookpro.getPrice());
		
		var decoratedMacbookPro = new $Jsdp.MacCaseDecorator(macbookpro);
		logger.log(decoratedMacbookPro.getPrice());
	}
})