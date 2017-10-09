var $Jsdp = $Jsdp || {}; 

var _ = {
	min: function(values) {
		return values;
	}
};

$Jsdp.ImportMixinDemoModule = (function(jQuery, _) {
	function privateMethod1() {
		jQuery('.container').html('test');
	}
	
	function privateMethod2() {
		$Jsdp.LxLogger.logger.log(_.min([10, 5, 100, 2, 1000]));
	}
	
	return {
		publicMethod: function() {
			privateMethod1();
		}
	}
})(jQuery, _);