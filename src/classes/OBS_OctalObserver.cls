public with sharing class OBS_OctalObserver extends OBS_AbstractObserver {
	CONV_DecimalToOctalStringConverter octalConverter; 
	
    public OBS_OctalObserver(CONV_DecimalToOctalStringConverter octalConverter, OBS_Subject subject) {
    	this.octalConverter = octalConverter;
    	this.subject = subject;
    	this.subject.attach(this);
    }

    public OBS_OctalObserver(OBS_Subject subject) {
    	this(new CONV_DecimalToOctalStringConverter(), subject);
    }
    
    public override void doUpdate() {
    	System.debug('Octal String: ' + octalConverter.convert(this.subject.state));
    }
}