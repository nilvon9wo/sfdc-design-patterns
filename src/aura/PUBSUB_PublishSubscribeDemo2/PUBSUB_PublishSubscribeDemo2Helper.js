({
	listener1 : function(logger) {
		return function(topic, data) {
			logger.log('A new message was received:' + topic);
			$('.messageSender').html(data.sender);
			$('.messagePreview').html(data.body);
		}
	},

	listener2 : function(counters) {
		return function() {
			$('.newMessageCounter').html(++counters.mail);
		}
	}
})