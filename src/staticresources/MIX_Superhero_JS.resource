var $Jsdp = $Jsdp || {};

$Jsdp.Superhero = function(firstName, lastName, powers) {
	$Jsdp.Person.call(this, firstName, lastName);
	this.powers = powers;
};

$Jsdp.Superhero.prototype = Object.create($Jsdp.Person.prototype);