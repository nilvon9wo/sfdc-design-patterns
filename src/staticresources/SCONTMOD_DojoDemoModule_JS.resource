dojo.setObject('basket.core', (function() {
	var basket = ['Test'];
  
   	function privateMethod() {
		basket.forEach(function(item){
			$Jsdp.LxLogger.logger.log(item);
		});
   	}
 
	return {
       	publicMethod: function(){
	        privateMethod();
   		}
   	};
  })());
