var $Jsdp = $Jsdp || {};

var vehiclePrototype = {
	init: function(model) {
		this.model = model;
	}

	getModel: function() {
		$Jsdp.LxLogger.log('The model of this vehicle is..' + this.model);
	}
};

$Jsdp.Vehicle2 = function (model) {
	function F() {
		F.prototype = vehiclePrototype;
	};
	
	var f = new F();
	f.init(model);
	return f;
}