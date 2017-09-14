public with sharing abstract class RESP_AbstractLogger {
	protected LoggingLevel level;
	public RESP_AbstractLogger nextLogger {private get; set;}
	
	public void logMessage (LoggingLevel level, String message) {
		if (this.level.ordinal() <= level.ordinal()) {
			this.write(message);
		}
		if (nextLogger != null) {
			nextLogger.logMessage(level, message);
		}
	}
	
	protected abstract void write(String message);
}