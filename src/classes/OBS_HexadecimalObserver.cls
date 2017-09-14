public with sharing class OBS_HexadecimalObserver extends OBS_AbstractObserver {
	CONV_DecimalToHexadecimalStringConverter hexadecimalConverter; 
	
    public OBS_HexadecimalObserver(CONV_DecimalToHexadecimalStringConverter hexadecimalConverter, OBS_Subject subject) {
    	this.hexadecimalConverter = hexadecimalConverter;
    	this.subject = subject;
    	this.subject.attach(this);
    }

    public OBS_HexadecimalObserver(OBS_Subject subject) {
    	this(new CONV_DecimalToHexadecimalStringConverter(), subject);
    }
    
    public override void doUpdate() {
    	System.debug('Hexadecimal String: ' + hexadecimalConverter.convert(this.subject.state));
    }
}