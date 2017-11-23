var $Jsdp = $Jsdp || {};

$Jsdp.Truck = function(options) {
	this.color = options.color || 'blue';
	this.state = options.state || 'user';
	this.wheelSize = options.wheelSize || 'large';
};

$Jsdp.Truck.prototype.drive = function(){};
$Jsdp.Truck.prototype.breakDown = function(){};