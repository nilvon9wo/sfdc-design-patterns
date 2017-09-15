public with sharing class MED_MediatorPatternDemo {
    public static void main() {
    	(new MED_MediatorPatternDemo()).demonstrate();
    }
    
    private void demonstrate() {
    	MED_UserDecorator robert = new MED_UserDecorator('Robert');
    	MED_UserDecorator john = new MED_UserDecorator('John');
    	
    	robert.sendMessage('Hi! John!');
    	john.sendMessage('Hello! Robert!');
    }
}