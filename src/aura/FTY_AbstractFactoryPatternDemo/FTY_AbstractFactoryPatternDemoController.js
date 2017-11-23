({
	demonstrate : function(component, event, helper) {
		$Jsdp.LxLogger.logger = component.find('logger');
		var logger = $Jsdp.LxLogger.logger; 

		$Jsdp.AbstractVehicleFactory.registerVehicle('car', $Jsdp.Car);
		var car = $Jsdp.AbstractVehicleFactory.getVehicle('car', {
			color: 'green',
			state: 'like new'
		}); 
		logger.log(car instanceof $Jsdp.Car);
		logger.displayObject('car', car);

		$Jsdp.AbstractVehicleFactory.registerVehicle('truck', $Jsdp.Truck);
		var truck = $Jsdp.AbstractVehicleFactory.getVehicle('truck', {
			color: 'neon yellow',
			wheelSize: 'medium'
		}); 
		logger.log(truck instanceof $Jsdp.Truck);
		logger.displayObject('truck', truck);
	}
}) 