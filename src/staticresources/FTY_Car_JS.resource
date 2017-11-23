var $Jsdp = $Jsdp || {};

$Jsdp.Car = function(options) {
	this.color = options.color || 'silver';
	this.doors = options.doors || 4;
	this.model = options.model || 'no model provided';
	this.state = options.state || 'brand new';
};

$Jsdp.Car.prototype.drive = function(){};
$Jsdp.Car.prototype.breakDown = function(){};