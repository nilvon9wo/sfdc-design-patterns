var $Jsdp = $Jsdp || {};

$Jsdp.Global = (function(){
	var counter = 0;
	
	return {
		nextId : function() {
			return counter++;
		}
	}
})();
