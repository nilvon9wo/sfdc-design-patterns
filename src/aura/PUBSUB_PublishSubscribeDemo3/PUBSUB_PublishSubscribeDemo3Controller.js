({
	demonstrate : function(component, event, helper) {
		$Jsdp.LxLogger.logger = component.find('logger');
		var logger = $Jsdp.LxLogger.logger; 

		var topic = 'inbox/newMessage';
		var messageLogger = helper.messageLogger(logger);
		var subscription = $Jsdp.EventBus2.subscribe(topic, messageLogger);
		
		var publish = $Jsdp.EventBus2.publish; 
		publish(topic, 'hello world!');
		publish(topic, ['test', 'a', 'b', 'c']);
		publish(topic, {
			sender: 'hello@example.com',
			body: 'Hey again!'
		});
		
		$Jsdp.EventBus2.unsubscribe(subscription);
		
		// This should NOT display
		publish(topic, 'hello!  are you still there?');
	}
})