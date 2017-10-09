var $Jsdp = $Jsdp || {};

$Jsdp.DemoModule = {
	property: 'someValue',
	
	config: {
		useCaching:true,
		language: 'en'
	},
	
	saySomething: function() {
		$Jsdp.LxLogger.logger.log('Where in the world is Paul Irish today?'); 
	},
	
	reportConfig: function() {
		var cacheUse = this.config.useCaching ? 'enabled' : 'disabled';
		$Jsdp.LxLogger.logger.log('Caching is: ' + cacheUse);
	},
	
	updateConfig: function(config) {
		if (typeof config === 'object') {
			this.config = config;
			$Jsdp.LxLogger.logger.log('New language: '  + this.config.language);
		}
	}
};