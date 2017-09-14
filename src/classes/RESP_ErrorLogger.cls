public with sharing class RESP_ErrorLogger extends RESP_AbstractLogger {
    public RESP_ErrorLogger(LoggingLevel level) {
    	this.level = level;
    }
    
    protected override void write (String message) {
    	System.debug('Error Console::Logger: ' + message);
    }
}