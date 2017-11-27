var $Jsdp = $Jsdp || {};

$Jsdp.CoffeeOrderContext = (function(){
	var CoffeeOrderContext = function(tableNumber){
		this.tableNumber = tableNumber;
	}
	
	CoffeeOrderContext.prototype.getTable = function() {
		return this.tableNumber;
	}; 
	
	return CoffeeOrderContext;
})();

