var $Jsdp = $Jsdp || {};

$Jsdp.Car = Object.create($Jsdp.Vehicle, {
	id: {
		value: $Jsdp.Global.nextId(),
		enumerable: true
	},
	
	model: {
		value: 'Ford Escort',
		enumerable: true
	},
	
	drive: function() {
		$Jsdp.LxLogger.log('Weeee. I\'m driving!');
	},

	panic: function() {
		$Jsdp.LxLogger.log('Wait.  How do you stop this thing?');
	}
});
