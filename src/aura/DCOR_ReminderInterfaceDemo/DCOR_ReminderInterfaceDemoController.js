({
	demonstrate : function(component, event, helper) {
		$Jsdp.LxLogger.logger = component.find('logger');
		var logger = $Jsdp.LxLogger.logger; 
		
		var properties = {
				name: 'Remember to buy the milk',
				date: '05/06/2016',
				actions: {
					summary: helper.summary,
					placeOrder:helper.placeOrder
				}
		};
		var todoItem = new $Jsdp.Todo(properties);
		logger.log(todoItem.methods.summary());
		logger.log(todoItem.methods.placeOrder());
	}
}) 