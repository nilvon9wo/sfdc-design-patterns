({
	demonstrate : function(component, event, helper) {
		$Jsdp.LxLogger.logger = component.find('logger');
		var logger = $Jsdp.LxLogger.logger; 

		var context = {
			flavourArray : [],
			tableArray : [],
			ordersMade : 0,
			flavourFactory : new $Jsdp.CoffeeFlavourFactory()
		}
		
		helper.takeOrders(context);
	    for (var i = 0; i < context.ordersMade; ++i) {
	    	context.flavourArray[i].serveCoffee(context.tableArray[i]);
	    }
	    logger.log('Total CoffeeFlavor objects made: ' + context.flavourFactory.getTotalCoffeeFlavoursMade());
	}
})