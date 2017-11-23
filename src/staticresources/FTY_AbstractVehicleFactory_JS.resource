var $Jsdp = $Jsdp || {};

$Jsdp.AbstractVehicleFactory = (function(){
	var types = {};
	
	return {
		getVehicle: function(type, customizations) {
			var Vehicle = types[type];
			return Vehicle ? new Vehicle(customizations) : null; 
		},
		
		registerVehicle: function(type, Vehicle) {
			var prototype = Vehicle.prototype;
			if (prototype.drive && prototype.breakDown) {
				types[type] = Vehicle;
				console.log('##### types', types);
			}
			return $Jsdp.AbstractVehicleFactory; 
		}
	};
})();

