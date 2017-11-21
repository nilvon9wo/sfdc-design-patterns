({
	addNewObserver : function (controlCheckbox, container) {
		var self = this;
		return function() {
			var check = document.createElement('input');
			check.type = 'checkbox';
			self.extendHtmlElement(check, new $Jsdp.Observer());
			check.update = self.update(check);
			controlCheckbox.addObserver(check);
			container.appendChild(check);
		}
	},

	extendHtmlElement : function(domElement, javaScriptClassInstance) {
		for (var key in javaScriptClassInstance) {
			domElement[key] = javaScriptClassInstance[key];
		}
	},
	
	notifyChecked : function (subject) {
		var inputElement = subject.getElementsByTagName('input')[0];
		return function () {
			subject.notify(inputElement.checked);
		};
	},
	
	update : function(domElement) {
		return function(value) {
			this.checked = value;
		};
	}
})