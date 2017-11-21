var $Jsdp = $Jsdp || {};

$Jsdp.EventBus2 = (function() {
	var topics = [];
	var subUid = -1;
	
	function publish(topic, data) {
		if (!topics[topic]) {
			return;
		}

		var subscribers = topics[topic];
		var nextIndex = subscribers ? subscribers.length : 0;
		
		while(nextIndex--) {
			subscribers[nextIndex].doAction(topic, data);
		}
	}

	function subscribe(topic, doAction) {
		if (!topics[topic]) {
			topics[topic] = [];
		}
		
		var token = (++subUid).toString;
		topics[topic].push({
			token: token,
			doAction: doAction
		});
		return token;
	}

	function unsubscribe(token) {
		for (var key in topics) {
			var topicActions = topics[key];
			if (topics[key]) {
				for (var i = 0, j = topicActions.length; i < j; i++) {
					if (topicActions[i].token === token) {
						topicActions.splice(i, 1);
						return token;
					}
				}
			}
		}
		return this;
	}
	
	return { 
		publish: publish,
		subscribe: subscribe,
		unsubscribe: unsubscribe
	}; 
})();
