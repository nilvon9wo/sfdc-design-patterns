var $Jsdp = $Jsdp || {};

$Jsdp.DemoModule = (function() {
	var counter = 0;

	return {
		incrementCounter: function() {
			return counter++;
		},
		
		resetCounter: function() {
			$Jsdp.LxLogger.logger.log('counter value prior to reset: ' + counter);
			counter = 0;
		}
	}; 
})();