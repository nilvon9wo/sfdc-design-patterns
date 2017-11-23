({
	augment : function(receivingClass, givingClass) {
		if (arguments[2]) {
			for (var i = 2, length = arguments.length; i < length; i++) {
				receivingClass.prototype[arguments[i]] = givingClass.prototype[arguments[i]]
			}
		}
		else {
			for (var methodName in givingClass.prototype) {
				if (!Object.hasOwnProperty.call(receivingClass.prototype, methodName)) {
					receivingClass.prototype[methodName] = givingClass.prototype[methodName];
				}
			}
		}
	}
})