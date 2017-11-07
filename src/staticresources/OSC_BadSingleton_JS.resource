var $Jsdp = $Jsdp || {};
 
$Jsdp.BadSingleton = (function() {
	var instance;
	
	function init() {
		var privateRandomNumber = Math.random();
		
		return {
			getRandomNumber: function() {
				return privateRandomNumber;
			}
		}
	} 
	
	return {
		getInstance: function() {
			instance = init();
			return instance;
		}
	};
})();
