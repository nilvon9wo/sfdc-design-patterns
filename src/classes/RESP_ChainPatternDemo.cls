public with sharing class RESP_ChainPatternDemo {
    public static void main() {
    	(new RESP_ChainPatternDemo()).demonstrate();
    }
    
    private void demonstrate() {
    	RESP_AbstractLogger loggerChain = this.getChainOfLoggers();
    	loggerChain.logMessage(LoggingLevel.INFO, 'This is an information');
    	loggerChain.logMessage(LoggingLevel.DEBUG, 'This is a debug level information');
    	loggerChain.logMessage(LoggingLevel.ERROR, 'This is an error information');
    }
    
    private RESP_AbstractLogger getChainOfLoggers() {
    	RESP_AbstractLogger errorLogger = new RESP_ErrorLogger(LoggingLevel.ERROR);
    	RESP_AbstractLogger fileLogger = new RESP_FileLogger(LoggingLevel.DEBUG);
    	RESP_AbstractLogger consoleLogger = new RESP_ConsoleLogger(LoggingLevel.INFO);
    	
    	errorLogger.nextLogger = fileLogger;  
    	fileLogger.nextLogger = consoleLogger; 
    	return errorLogger;
    }
}