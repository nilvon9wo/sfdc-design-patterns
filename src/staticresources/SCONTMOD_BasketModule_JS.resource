var $Jsdp = $Jsdp || {};

$Jsdp.BasketModule = (function() {
	var basket = [];
	
	function doSomethingPrivate1() {
	}
	
	function doSomethingPrivate2() {
	}
	
	return {
		addItem: function(values) {
			basket.push(values);
		},
		
		getItemCount: function() {
			return basket.length;
		},
		
		doSomething: doSomethingPrivate1,
		
		getTotal: function() {
			var p = 0;
			var q = this.getItemCount();
			
			while (q--) {
				p += basket[q].price;
			}
			
			return p;
		}
	};
})();