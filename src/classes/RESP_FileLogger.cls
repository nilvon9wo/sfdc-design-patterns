public with sharing class RESP_FileLogger extends RESP_AbstractLogger {
    public RESP_FileLogger(LoggingLevel level) {
    	this.level = level;
    }
    
    protected override void write (String message) {
    	System.debug('File::Logger: ' + message);
    }
}