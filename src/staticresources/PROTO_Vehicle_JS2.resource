var $Jsdp = $Jsdp || {};

$Jsdp.Vehicle2 = (function(){
	var vehiclePrototype = {
		init: function(model) {
			this.model = model;
		}
	
		getModel: function() {
			$Jsdp.LxLogger.log('The model of this vehicle is..' + this.model);
		}
	};
	
	function Vehicle(model) {
		function F() {
			F.prototype = vehiclePrototype;
		};
		
		var f = new F();
		f.init(model);
		return f;
	} 	
	
	return Vehicle;
})();
