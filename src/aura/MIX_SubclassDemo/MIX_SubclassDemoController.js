({
	demonstrate : function(component, event, helper) {
		$Jsdp.LxLogger.logger = component.find('logger');
		var logger = $Jsdp.LxLogger.logger; 
		
		var clark = new $Jsdp.Person('Clark', 'Kent');
		var superman = new $Jsdp.Superhero('Clark', 'Kent', ['flight', 'heat-vision']);
		
		logger.displayObject('superman', superman);
	}
}) 