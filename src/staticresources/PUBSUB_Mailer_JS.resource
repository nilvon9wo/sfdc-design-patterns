var $Jsdp = $Jsdp || {};

$Jsdp.Mailer = (function() {
	var Mailer = function() {
		$Jsdp.EventBus.subscribe('order/new', this.sendPurchaseEmail);
	};
	
	Mailer.prototype.sendPurchaseEmail = function(userEmail) {
		$Jsdp.LxLogger.logger.log('Sent email to ' + userEmail);
	};
	
	return Mailer;
})();
