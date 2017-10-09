({
	demonstrate : function(component, event, helper) {
		var civic = new $Jsdp.Car('Honda Civic', 2009, 20000);
		var mondeo = new $Jsdp.Car('Ford Mondeo', 2010, 5000);
		
		var logger = component.find('logger');
		logger.log(civic.toString());
		logger.log(mondeo.toString());
	}
})