({
	demonstrate : function(component, event, helper) {
		$Jsdp.LxLogger.logger = component.find('logger');
		var logger = $Jsdp.LxLogger.logger; 
		
		var car = new $Jsdp.Vehicle('car');
		logger.displayObject('car', car);
		
		var truck = new $Jsdp.Vehicle('truck');
		truck.setModel = function(model) {
			this.model = model;
		};
		truck.setModel('CAT');

		truck.setColor = function(color) {
			this.color = color;
		};
		truck.setColor('blue');
		
		logger.displayObject('truck', truck);

		var car2 = new $Jsdp.Vehicle('car');
		logger.displayObject('car', car2);
	}
}) 