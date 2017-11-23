var $Jsdp = $Jsdp || {};

$Jsdp.Todo = function(config) {
	Interface.ensureImplements(config.actions, $Jsdp.ReminderIntf);
	this.name = config.name;
	this.methods = config.actions;
}
