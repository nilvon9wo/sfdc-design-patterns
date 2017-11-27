({
	demonstrate : function(component, event, helper) {
		var logger = component.find('logger');
		var car1 = Object.create($Jsdp.Car);
		logger.log(car1.model);
	}
})