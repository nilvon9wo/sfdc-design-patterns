jQuery.single = (function(object){
	var collection = jQuery([1]);
	return function(element) {
		collection[0] = element;
		return collection;
	};
})();