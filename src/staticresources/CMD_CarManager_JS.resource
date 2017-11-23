var $Jsdp = $Jsdp || {};

$Jsdp.CarManager = (function() {
	return {
		requestInfo: function(car) {
			$Jsdp.LxLogger.logger.log(
				'The information for ' + car.model 
				+ ' with id ' + car.id
				+ ' is foobar'
			);
		},

		buyVehicle: function(car) {
			$Jsdp.LxLogger.logger.log(
				'You have successfully purchased Item ' + car.id + ','
				+ ' a ' + car.model
			);
		},

		arrangeViewing: function(car) {
			$Jsdp.LxLogger.logger.log(
				'You have successfully booked a viewing of ' + car.model 
				+ ' (' + car.id + ')'
			);
		}
	};
})();

$Jsdp.CarManager.execute = function(command, car) {
	var managerCommand = $Jsdp.CarManager[command]; 
	return managerCommand
		&& managerCommand.apply($Jsdp.CarManager, [car]);
}