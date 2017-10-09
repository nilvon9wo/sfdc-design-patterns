var $Jsdp = $Jsdp || {};

$Jsdp.Car = function(model, year, miles) {
	this.model = model;
	this.year = year;
	this.miles = miles;
};

$Jsdp.Car.prototype.toString = function() {
	return this.model + ' has done ' + this.miles + ' miles';
}; 
