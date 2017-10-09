var $Jsdp = $Jsdp || {};

$Jsdp.NamespaceDemoModule = (function() {
	var privateCounter = 0;
	
	var privateMethod = function(foo) {
		$Jsdp.LxLogger.logger.log(foo);
	};
	
	return {
		publicVar : 'foo',
		
		publicFunction: function(bar) {
			privateCounter++;
			privateMethod(bar);
		}
	}; 
})();