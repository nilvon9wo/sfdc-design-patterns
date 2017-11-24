var $Jsdp = $Jsdp || {};

$Jsdp.MacCaseDecorator = function(macbook){
	this.macbook = macbook;
};

$Jsdp.ObjectHelper.extend($Jsdp.MacCaseDecorator, $Jsdp.MacBookDecorator);

$Jsdp.MacCaseDecorator.prototype.addCase = function() {
	return this.macbook.addCase() + 'Adding case to macbook';
}

$Jsdp.MacCaseDecorator.prototype.getPrice = function(){
    return this.macbook.getPrice() + 45.00; 
};