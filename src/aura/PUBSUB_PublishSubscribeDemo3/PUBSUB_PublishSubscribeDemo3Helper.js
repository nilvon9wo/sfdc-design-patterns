({
	messageLogger : function(logger) {
		return function(topics, data) {
			logger.log('Logging: ' + topics + ': ' + data);
		};
	}
})