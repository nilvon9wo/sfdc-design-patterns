({
	demonstrate : function(component, event, helper) {
		$Jsdp.LxLogger.logger = component.find('logger');
		var logger = $Jsdp.LxLogger.logger;
		var topic = 'newDataAvailable';

		$Jsdp.EventBus2.subscribe(topic, helper.gridUpdate(logger));
		$Jsdp.EventBus2.publish(topic, {
			summary: 'Apple made $5 billion',
			identifier: 'APPL',
			stockPrice: 570.91
		});
		$Jsdp.EventBus2.publish(topic, {
			summary: 'Microsoft made $20 million',
			identifier: 'MSFT',
			stockPrice: 30.85
		});
	}
})