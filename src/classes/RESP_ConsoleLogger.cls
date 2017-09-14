public with sharing class RESP_ConsoleLogger extends RESP_AbstractLogger {
    public RESP_ConsoleLogger(LoggingLevel level) {
    	this.level = level;
    }
    
    protected override void write (String message) {
    	System.debug('Standard Console::Logger: ' + message);
    }
}