var $Jsdp = $Jsdp || {}; 

$Jsdp.ExportMixinDemoModule = (function() {
	var privateVariable = 'Hello World';
	
	function privateMethod() {
	}
	
	return {
		publicProperty: 'Foobar',
		
		publicMethod: function() {
			$Jsdp.LxLogger.logger.log(privateVariable);
		}
	};
})();