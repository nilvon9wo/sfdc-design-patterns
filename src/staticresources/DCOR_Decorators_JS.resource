var $Jsdp = $Jsdp || {};

$Jsdp.Decorators =  {
	memory: function(macbook) {
		var value = macbook.cost();
		macbook.cost = function() {
			return value + 75;
		};
	},
	
	engraving: function(macbook) {
		var value = macbook.cost();
		macbook.cost = function() {
			return value + 200;
		};
	},
	
	insurance: function(macbook) {
		var value = macbook.cost();
		macbook.cost = function() {
			return value + 200;
		};
	}
};
