var $Jsdp = $Jsdp || {};

$Jsdp.DemoModule = (function() {
	var name = 'Ben Cherry';
	var greeting = 'Hey there!';
	
	function privateGetName() {
		$Jsdp.LxLogger.log('Name: ' + name);
		return name;
	}
	
	function publicSetName(_name) {
		name = _name;
	}
	
	function publicGetName() {
		return privateGetName();
	}
	
	return {
		setName: publicSetName,
		getName: publicGetName,
		greeting: greeting
	}
})();