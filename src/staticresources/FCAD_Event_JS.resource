var $Jsdp = $Jsdp || {};

$Jsdp.Event = (function() {
	return {
		addEvent = function(element, event, callback) {
			if (el.addEventListener) {
				el.addEventListener(event, callback, false);
			}
			else if (el.attachEvent) {
				el.attachEvent('on' + event, callback)
			} else {
				el['on' + event] = callback;
			}
		}
	};
})();