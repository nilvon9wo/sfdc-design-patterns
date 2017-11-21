var $Jsdp = $Jsdp || {};

$Jsdp.Order = (function() { 
	var Order = function(params) {
		this.params = params;
	};
	
	Order.prototype.save = function() {
		$Jsdp.EventBus.publish('order/new', this.params.userEmail);
	};
	
	return Order;
})();
