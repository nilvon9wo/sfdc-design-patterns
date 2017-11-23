var $Jsdp = $Jsdp || {};

$Jsdp.TruckFactory = function(){};
$Jsdp.TruckFactory.prototype = new $Jsdp.VehicleFactory();
$Jsdp.TruckFactory.prototype.vehicleClass = $Jsdp.Truck;
