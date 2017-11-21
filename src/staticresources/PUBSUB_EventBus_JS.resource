var $Jsdp = $Jsdp || {};

$Jsdp.EventBus = (function() {
	var topics = [];

	function publish(topic, data) {
		if (!topics[topic] || topics[topic].length < 1) {
			return;
		}
		
		topics[topic].forEach(function (listener) {
			listener(topic, data || {});
		});
	}

	function subscribe(topic, listener) {
		if (!topics[topic]) {
			topics[topic] = [];
		}
		topics[topic].push(listener);
	}
	
	return {
		publish: publish,
		subscribe: subscribe
	} 
})();
