({
	demonstrate : function(component, event, helper) {
		$Jsdp.LxLogger.logger = component.find('logger');
		var logger = $Jsdp.LxLogger.logger; 

		var mailer = new $Jsdp.Mailer(); 
		var order = new $Jsdp.Order({
			userEmail : 'john@example.com'
		});
		order.save();
	}
})