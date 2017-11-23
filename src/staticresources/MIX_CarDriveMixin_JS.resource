var $Jsdp = $Jsdp || {};

$Jsdp.CarDriveMixin = function(){}; 
$Jsdp.CarDriveMixin.prototype = {
	driveForward: function() {
		$Jsdp.LxLogger.logger.log('drive forward');
	},
	driveBackward: function() {
		$Jsdp.LxLogger.logger.log('drive backward');
	},
	driveSideways: function() {
		$Jsdp.LxLogger.logger.log('drive sideways');
	}
};