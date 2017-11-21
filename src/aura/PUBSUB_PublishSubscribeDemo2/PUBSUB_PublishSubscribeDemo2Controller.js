({
	demonstrate : function(component, event, helper) {
		$Jsdp.LxLogger.logger = component.find('logger');
		var logger = $Jsdp.LxLogger.logger; 

		var topic = 'inbox/newMessage';
		var counters = {mail:0};

		var subscribe = $Jsdp.EventBus.subscribe;
		var subscriber1 = subscribe(topic, helper.listener1(logger));
		var subscriber2 = subscribe(topic, helper.listener2(counters));
		
		$Jsdp.EventBus.publish(topic, {
			sender: 'hello@example.com',
			body: 'Hey there!  How are you doing today?'
		});
	}
})