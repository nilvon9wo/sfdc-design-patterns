({
	demonstrate : function(component, event, helper) {
		$Jsdp.LxLogger.logger = component.find('logger');
		window.basket.core.publicMethod();
	}
})