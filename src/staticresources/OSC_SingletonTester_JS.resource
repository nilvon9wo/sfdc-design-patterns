var $Jsdp = $Jsdp || {};
 
$Jsdp.SingletonTester = (function() {
	var instance;

	function Singleton(options) {
		options = options || {};
		this.name = 'SingletonTester';
		this.pointX = options.pointX || 6;
		this.pointY = options.pointY || 10;
	}
	
	return {
		name: 'SingletonTester',
		getInstance: function(options) {
			if (!instance) {
				instance = new Singleton(options);
			}
			return instance;
		}
	};
})();
