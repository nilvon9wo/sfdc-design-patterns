({
	onClick : function(logger) {
		return function() {
			logger.log(jQuery.single(this).html())
		};
	}
})