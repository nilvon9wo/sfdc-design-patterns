({
	demonstrate : function(component, event, helper) {
		$Jsdp.LxLogger.logger = component.find('logger');
		
		var ferrari = new $Jsdp.Car("Ferrari", 14523);
		var fordEscort1 = new $Jsdp.Car("Ford Escort", 453543);
		var fordEscort2 = new $Jsdp.Car("Ford Escort", 34232);
		var fordMondeo = new $Jsdp.Car("Ford Mondeo", 54323);
		
		var carManager = $Jsdp.CarManager;
		carManager.execute( "buyVehicle", fordEscort1);
		carManager.execute( "arrangeViewing", ferrari);
		carManager.execute( "requestInfo", fordMondeo);
		carManager.execute( "requestInfo", fordEscort2);
		carManager.execute( "buyVehicle", fordEscort2);	
	}
}) 