({
	demonstrate : function(component, event, helper) {
		$Jsdp.LxLogger.logger = component.find('logger');
		var logger = $Jsdp.LxLogger.logger; 
		
		helper.augment($Jsdp.Car, $Jsdp.CarDriveMixin, 'driveForward', 'driveBackward');
		var car = new $Jsdp.Car({
			color: 'blue',
			model: 'Ford Escort'
		});
		car.driveForward();
		car.driveBackward();
		
		helper.augment($Jsdp.Car, $Jsdp.CarDriveMixin);
		var sportsCar = new $Jsdp.Car({
			color: 'red',
			model: 'Porsche'
		});
		sportsCar.driveSideways();
	}
})