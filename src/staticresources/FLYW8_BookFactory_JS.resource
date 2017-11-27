var $Jsdp = $Jsdp || {};

$Jsdp.BookFactory = (function(){
	var existingBookArray = [];
	return {
		createBook: function(details) {
			var ISBN = details.ISBN;
			if (!existingBookArray[ISBN]) {
				existingBookArray[ISBN] = new $Jsdp.Book(details); 
			}
			return existingBookArray[ISBN];
		}
	};
})();