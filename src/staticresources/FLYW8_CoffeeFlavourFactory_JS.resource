var $Jsdp = $Jsdp || {};

$Jsdp.CoffeeFlavourFactory =  (function(){
	var CoffeeFlavourFactory = function() {
		this.flavours = [];
		this.length = 0;
	}
	
	CoffeeFlavourFactory.prototype.getCoffeeFlavour = function(flavourName) {
		var flavour = this.flavours[flavourName];
		if (!flavour) {
			flavour = new $Jsdp.CoffeeFlavour(flavourName);
			this.flavours[flavourName] = flavour;
			length++;
		}
		return flavour;
	};
	
	CoffeeFlavourFactory.prototype.getTotalCoffeeFlavoursMade = function() {
		return length;
	};
	
	return CoffeeFlavourFactory; 
})();

