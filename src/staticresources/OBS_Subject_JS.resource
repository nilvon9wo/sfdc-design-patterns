var $Jsdp = $Jsdp || {};

$Jsdp.Subject = (function() {
	function Subject() {
		this.observerList = new $Jsdp.ObserverList();
	}
	
	Subject.prototype.addObserver = function(observer) {
		this.observerList.add(observer);
	};

	Subject.prototype.removeObserver = function(observer) {
		this.observerList.removeAt(this.observerList.indexOf(observer));
	};
	
	Subject.prototype.notify = function(context) {
		for (var i = 0; i < this.observerList.count(); i++) {
			this.observerList.get(i).update(context);
		}
	};

	return Subject;
})();
