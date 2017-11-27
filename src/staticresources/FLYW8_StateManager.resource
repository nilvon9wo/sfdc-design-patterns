var $Jsdp = $Jsdp || {};

$Jsdp.StateManager =  {
	fly: function() {
		var self = this;
		
		$('#container')
			.unbind()
			.on('click', 'div.toggle', function(event){
				self.handleClick(event.target);
			});
	},
	
	handleClick: function(element) {
		$(element).find('span')
			.toggle('slow');
	}
};

