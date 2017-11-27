var $Jsdp = $Jsdp || {};

$Jsdp.BookRecordManager = (function(){
	var bookRecordDatabase = [];
	
	return {
		addBookRecord: function(intrinsicDetails, extrinsicDetails) {
			bookRecordDatabase[extrinsicDetails.id] = extrinsicDetails;
			bookRecordDatabase[extrinsicDetails.id].book = $Jsdp.BookFactory.createBook(intrinsicDetails); 
		},
		updateCheckoutStatus: function(extrinsicDetails) {
			var record = bookRecordDatabase[extrinsicDetails.id];
			record.availability = extrinsicDetails.availability;
			record.checkoutDate = extrinsicDetails.checkoutDate;
			record.checkoutMember = extrinsicDetails.checkoutMember;
			record.dueReturnDate = extrinsicDetails.dueReturnDate;
		},
		extendCheckoutPeriod: function(bookId, newReturnDate) {
			bookRecordDatabase[bookId].dueReturnDate = newReturnDate;
		},
		isPastDue: function(bookId) {
			var currentDateTime = new Date().getTime();
			var dueReturnDate = Date.parse(bookRecordDatabase[bookId].dueReturnDate;
			return currentDateTime > dueReturnDate);
		}
	};
})();