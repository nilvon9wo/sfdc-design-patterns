({
	takeOrders : function(context) {
		this.takeOrder(context, 'Cappuccino', 2);
	    this.takeOrder(context, 'Cappuccino', 2);
	    this.takeOrder(context, 'Frappe', 1);
	    this.takeOrder(context, 'Frappe', 1);
	    this.takeOrder(context, 'Xpresso', 1);
	    this.takeOrder(context, 'Frappe', 897);
	    this.takeOrder(context, 'Cappuccino', 97);
	    this.takeOrder(context, 'Cappuccino', 97);
	    this.takeOrder(context, 'Frappe', 3);
	    this.takeOrder(context, 'Xpresso', 3);
	    this.takeOrder(context, 'Cappuccino', 3);
	    this.takeOrder(context, 'Xpresso', 96);
	    this.takeOrder(context, 'Frappe', 552);
	    this.takeOrder(context, 'Cappuccino', 121);
	    this.takeOrder(context, 'Xpresso', 121);
	},
	 
	takeOrder : function(context, flavourIn, table) {
		context.flavourArray.push(context.flavourFactory.getCoffeeFlavour(flavourIn));
		context.tableArray.push(new $Jsdp.CoffeeOrderContext(table));
		context.ordersMade++;
	}
})