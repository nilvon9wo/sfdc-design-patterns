({
	demonstrate : function(component, event, helper) {
		var logger = component.find('logger');
		var car2 = $Jsdp.Vehicle2('Ford Escort');
		logger.log(car2.getModel());
	}
})