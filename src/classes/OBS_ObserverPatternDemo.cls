public with sharing class OBS_ObserverPatternDemo {
	OBS_Subject subject;
	
	public OBS_ObserverPatternDemo(OBS_Subject subject) {
		this.subject = subject;
	}
	
	public OBS_ObserverPatternDemo() {
		this(new OBS_Subject());
	}
	
    public static void main() {
    	(new OBS_ObserverPatternDemo()).demonstrate();
    }
    
    public void demonstrate() {
    	new OBS_HexadecimalObserver(this.subject);
    	new OBS_OctalObserver(this.subject);
    	new OBS_BinaryObserver(this.subject);
    	
    	System.debug('First state change: 15');
    	subject.state = 15;

    	System.debug('Second state change: 10');
    	subject.state = 10;
    }
}