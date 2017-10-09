var $Jsdp = $Jsdp || {};
 
$Jsdp.CounterModule = (function() { 
	var privateCounter = 0;
	
	function privateFunction() {
		$Jsdp.LxLogger.log('privateFunction: ' + privateCounter);
		privateCounter++;
	}
	
	function publicFunction() {
		$Jsdp.LxLogger.log('publicFunction: ' + privateCounter);
		publicIncrement();
	}
	
	function publicIncrement() {
		$Jsdp.LxLogger.log('publicIncrement: ' + privateCounter);
		privateFunction();
	}
	
	function publicGetCount() {
		return privateCounter;
	}
	
	return {
		start: publicFunction,
		increment: publicIncrement,
		count: publicGetCount
	};
})();
