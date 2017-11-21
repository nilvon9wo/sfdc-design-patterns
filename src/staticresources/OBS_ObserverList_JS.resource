var $Jsdp = $Jsdp || {};

$Jsdp.ObserverList = (function() {
	function ObserverList() {
		this.observerList = [];
	}
	
	ObserverList.prototype.add = function(object) {
		return this.observerList.push(object);
	}

	ObserverList.prototype.count = function(object) {
		return this.observerList.length;
	}

	ObserverList.prototype.get = function(index) {
		if (index > -1 && index < this.observerList.length) {
			return this.observerList[index];
		}
	}

	ObserverList.prototype.indexOf = function(object, startIndex) {
		for (var index = startIndex || 0; index < this.observerList.length; index++) {
			if (this.observerList[index] === object) {
				return index;
			}
		}
		return -1;
	}

	ObserverList.prototype.removeAt = function(index) {
		this.observerList.splice(index, 1);
	}
	
	return ObserverList;
})();
