({
	addNewObserver : function (component) {
		var params = {};
		$A.createComponent('c:OBS_CheckboxObserver', params, this.appendToContainer(component));
	},
	
	appendToContainer: function(component) {
		return function(newElement, status, errorMessage) {
			if (status === 'SUCCESS') {
				var body = component.get('v.body');
				body.push(newElement);
				component.set('v.body', body);
			}
			else {
				console.error('Something went wrong!:', errorMessage);
			}
		};
	},

	extendHtmlElement : function(domElement, javaScriptClassInstance) {
		for (var key in javaScriptClassInstance) {
			domElement[key] = javaScriptClassInstance[key];
		}
	},
	
	update : function(domElement) {
		return function(value) {
			this.checked = value;
		};
	},

	notifyChecked : function (component) {
		var checkboxChangedEvent = $A.getEvt('c:OBS_CheckboxChangedEvent');
		checkboxChangedEvent.setParam('newValue', component.get('v.value'));
		checkboxChangedEvent.fire();
	}
})