public with sharing class OBS_BinaryObserver extends OBS_AbstractObserver {
	CONV_DecimalToBinaryStringConverter binaryConverter; 
	
    public OBS_BinaryObserver(CONV_DecimalToBinaryStringConverter binaryConverter, OBS_Subject subject) {
    	this.binaryConverter = binaryConverter;
    	this.subject = subject;
    	this.subject.attach(this);
    }

    public OBS_BinaryObserver(OBS_Subject subject) {
    	this(new CONV_DecimalToBinaryStringConverter(), subject);
    }
    
    public override void doUpdate() {
    	System.debug('Binary String: ' + binaryConverter.convert(this.subject.state));
    }
}