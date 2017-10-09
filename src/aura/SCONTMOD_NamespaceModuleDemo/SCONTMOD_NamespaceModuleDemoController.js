({
	demonstrate : function(component, event, helper) {
		$Jsdp.LxLogger.logger = component.find('logger');
		var localVar = $Jsdp.NamespaceDemoModule.publicVar; 
		$Jsdp.NamespaceDemoModule.publicFunction(localVar);
	}
})