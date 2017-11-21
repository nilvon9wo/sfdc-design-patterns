({
	doInit : function(component, event, helper) {
		var controlCheckbox = component.find('mainCheckbox').getElement();
		helper.extendHtmlElement(controlCheckbox, new $Jsdp.Subject());
		controlCheckbox.onclick = helper.notifyChecked(controlCheckbox);

		var container = component.find('observerContainer').getElement();
		
		var addButton = component.find('addNewObserver').getElement();
		addButton.onclick = helper.addNewObserver(controlCheckbox, container);
	},
})