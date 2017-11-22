var $Jsdp = $Jsdp || {};

// This object is a placeholder providing a common point of reference within $Jsdp resources and LX components.
// 		LX components should include <ltng:require scripts="{!$Resource.LX_Logger_JS}">
//		After Scripts Loaded, execute $Jsdp.LxLogger.logger = component.find('logger');
//		Where "logger" is the aura:id of a component with a public "log" method.
$Jsdp.LxLogger = {};
