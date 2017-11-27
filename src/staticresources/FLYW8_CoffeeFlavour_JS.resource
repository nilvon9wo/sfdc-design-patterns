var $Jsdp = $Jsdp || {};

$Jsdp.CoffeeFlavour =  (function(){
	var CoffeeFlavour = function(flavour) {
		this.flavour = flavour;
	}
	
	CoffeeFlavour.implementsFor($Jsdp.CoffeeOrder);

	if (typeof CoffeeFlavour.prototype.getFlavour === 'function') {
		CoffeeFlavour.prototype.getFlavour = function() {
			return self.flavour;
		};
	}
	
	if (typeof CoffeeFlavour.prototype.serveCoffee === 'function') {
		CoffeeFlavour.prototype.serveCoffee = function(context) {
			$Jsdp.LxLogger.logger.log(
					'Server Coffee flavour ' + this.flavour
					+ ' to table number ' + context.getTable()
			);
			return self.flavour;
		};
	}
	
	return CoffeeFlavour;
})();

