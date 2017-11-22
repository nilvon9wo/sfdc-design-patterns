({
	pushToLog : function(component, event) {
		this.pushMessage(component, event.getParam('arguments'));
	},
	 
	displayObject : function(component, event) {
		var args = event.getParam('arguments');
		var label = args.label;
		var object = args.object;

		this.pushMessage(component, {message: label}); 
		for (var key in object) {
			this.pushMessage(component, {
				message: '--- ' + key + ' : ' + object[key],
				severity: 'info'
			});
		}
	},
	
	pushMessage: function(component, message) {
		var logItemList = component.get('v.logItemList');
		logItemList.push(message);
		component.set('v.logItemList', logItemList);
	}
})