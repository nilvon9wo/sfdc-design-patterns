({
	pushToLog : function(component, event) {
		var logItem = event.getParam('arguments');
		
		var logItemList = component.get('v.logItemList');
		logItemList.push(logItem);
		component.set('v.logItemList', logItemList);
	}
})