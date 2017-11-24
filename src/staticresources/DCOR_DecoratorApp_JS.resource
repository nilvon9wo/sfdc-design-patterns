var $Jsdp = $Jsdp || {};

$Jsdp.DecoratorApp =  {
	defaults: {
		validate: false,
		limit: 5,
		name: 'foo',
		welcome: function() {
			$Jsdp.LxLogger.logger.log('Welcome!');
		}
	},
	
	options: {
		validate: true,
		name: 'bar',
		helloWorld: function() {
			$Jsdp.LxLogger.logger.log('hello world');
		}
	},
	
	settings: {},
	
	printObject: function(object) {
		var array = [];
		var next;
		$.each(object, function(key, value){
			next = key + ': ';
			next += $.isPlainObject(value) ? this.printObject(value) : value;
			array.push(next);
		});
		return '{'
			+ array.join(', ')
			+ '}';
	}
};

