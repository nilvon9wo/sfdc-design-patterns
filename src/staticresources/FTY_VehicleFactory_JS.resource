var $Jsdp = $Jsdp || {};

$Jsdp.VehicleFactory = function(){};

$Jsdp.VehicleFactory.prototype.vehicleClass = $Jsdp.Car;

$Jsdp.VehicleFactory.prototype.createVehicle = function(options) {
	switch (options.vehicleType) {
		case 'car':
			this.vehicleClass = $Jsdp.Car;
			break;
		case 'truck':
			this.vehicleClass = $Jsdp.Truck;
			break;
	}
	return new this.vehicleClass(options);
}

