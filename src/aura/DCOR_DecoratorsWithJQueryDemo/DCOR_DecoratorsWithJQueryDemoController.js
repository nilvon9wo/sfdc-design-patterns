({
	demonstrate : function(component, event, helper) {
		$Jsdp.LxLogger.logger = component.find('logger');
		var logger = $Jsdp.LxLogger.logger; 

		$Jsdp.DecoratorApp.settings = $.extend({}, $Jsdp.DecoratorApp.defaults, $Jsdp.DecoratorApp.options)
		$('#log').append(
				'<p>' + $Jsdp.DecoratorApp.printObject($Jsdp.DecoratorApp.settings) + '</p>'
				+ '<p>' + $Jsdp.DecoratorApp.printObject($Jsdp.DecoratorApp.options) + '</p>'
				+ '<p>' + $Jsdp.DecoratorApp.printObject($Jsdp.DecoratorApp.defaults) + '</p>'
		);
	}
})