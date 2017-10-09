({
	demonstrate : function(component, event, helper) {
		$Jsdp.LxLogger.logger = component.find('logger');
		
		$Jsdp.BasketModule.addItem({item: 'bread', price: 0.5 });
		$Jsdp.BasketModule.addItem({item: 'butter', price: 0.3 });
		
		$Jsdp.LxLogger.logger.log($Jsdp.BasketModule.getItemCount());
		$Jsdp.LxLogger.logger.log($Jsdp.BasketModule.getTotal());
	}
})