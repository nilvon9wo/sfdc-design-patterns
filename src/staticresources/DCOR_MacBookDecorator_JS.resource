var $Jsdp = $Jsdp || {};

$Jsdp.MacBookDecorator = function(macbook){
	Interface.ensureImplements(macbook, $Jsdp.MacBookIntf);
	this.macbook = macbook;
};

$Jsdp.MacBookDecorator.prototype = {
    addEngraving: function(){
        return this.macbook.addEngraving();
    },
    addParallels: function(){
        return this.macbook.addParallels();
    },
    add4GBRam: function(){
        return this.macbook.add4GBRam();
    },
    add8GBRam:function(){
        return this.macbook.add8GBRam();
    },
    addCase: function(){
        return this.macbook.addCase();
    },
    getPrice: function(){
        return this.macbook.getPrice();
    }
};