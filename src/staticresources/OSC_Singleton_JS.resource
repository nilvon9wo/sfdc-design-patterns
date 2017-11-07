var $Jsdp = $Jsdp || {};
 
$Jsdp.Singleton = (function() {
	var instance;
	
	function init() {
		var privateVariable = 'I am also private';
		var privateRandomNumber = Math.random();
		
		function privateMethod() {
			console.log('I am private.');
		}
		
		return {
			getRandomNumber: function() {
				return privateRandomNumber;
			},
			publicMethod: function() {
				console.log('The public can see me!');
			},
			publicProperty: 'I am also public'
		}
	} 
	
	return {
		getInstance: function() {
			if (!instance) {
				instance = init();
			}
			
			return instance;
		}
	};
})();
