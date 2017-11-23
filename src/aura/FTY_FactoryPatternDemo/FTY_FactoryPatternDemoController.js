({
	demonstrate : function(component, event, helper) {
		$Jsdp.LxLogger.logger = component.find('logger');
		var logger = $Jsdp.LxLogger.logger; 
		
		var vehicleFactory = new $Jsdp.VehicleFactory();
		var car = vehicleFactory.createVehicle({
			color: 'yellow',
			doors: 6,
			vehicleType: 'car'
		}); 
		
		logger.log(car instanceof $Jsdp.Car);
		logger.displayObject('car', car);
		
		var movingTruck = vehicleFactory.createVehicle({
			color: 'red',
			state: 'like new',
			vehicleType: 'truck',
			wheelSize: 'small'
		});  

		logger.log(movingTruck instanceof $Jsdp.Truck);
		logger.displayObject('movingTruck', movingTruck);
		
		var truckFactory = new $Jsdp.TruckFactory();
		var bigTruck = truckFactory.createVehicle({
			color: 'pink',
			state: 'omg... so bad.',
			wheelSize: 'so big'
		});  
		
		logger.log(movingTruck instanceof $Jsdp.Truck);
		logger.displayObject('bigTruck', bigTruck);
	}
}) 