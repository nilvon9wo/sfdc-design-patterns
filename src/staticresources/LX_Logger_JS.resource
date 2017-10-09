var $Jsdp = $Jsdp || {};

$Jsdp.LxLogger = {
	log: function(message) {
		if (!this.logger || !this.logger.log) {
			throw new Error('Logger has not been set.');
		}
		
		this.logger.log(message);
	}
};
