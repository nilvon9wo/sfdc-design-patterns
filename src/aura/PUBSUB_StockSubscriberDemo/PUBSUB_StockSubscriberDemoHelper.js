({
	gridUpdate: function(logger) {
		var self = this;
		return function(topic, data) {
			if (data) {
				self.addGridRow(logger, data);
				self.updateCounter(logger, data);
			};
		}
	},
	
	addGridRow: function(logger, data) {
		logger.displayObject(
			'Updated grid component with',
			data 
		);
	},
	
	updateCounter: function(logger, data) {
		logger.displayObject(
			'Data last update at: ' + this.getCurrentTime() + ' with ',
			data 
		);
	},
	
	getCurrentTime : function() {
		var date = new Date();
		return date.getMonth() 
			+ '/' + date.getDate()
			+ '/' + date.getFullYear()
			+ ' ' + date.toLocaleTimeString().toLowerCase(); 
	}
})