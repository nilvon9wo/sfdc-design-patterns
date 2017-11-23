var $Jsdp = $Jsdp || {};

$Jsdp.SomeModule = (function() {
	var _private = {
		i: 5,
		get: function() {
			$Jsdp.LxLogger.logger.log('current value: ' + this.i);
		},
		set: function(value) {
			this.i = value;
		},
		run: function(value) {
			$Jsdp.LxLogger.logger.log('running');
		},
		jumping: function(value) {
			$Jsdp.LxLogger.logger.log('jumping');
		}
	};
	
	return {
		facade: function(args) {
			_private.set(args.value);
			_private.get();
			if (args.run) {
				_private.run();
			}
		}
	};
})();