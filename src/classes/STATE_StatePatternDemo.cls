public with sharing class STATE_StatePatternDemo {
	STATE_Context context; 
	public STATE_StatePatternDemo(STATE_Context context) {
		this.context = context;
	}
	
	public STATE_StatePatternDemo() {
		this(new STATE_Context());
	}
	
	public static void main(){
		(new STATE_StatePatternDemo()).demonstrate();
	}
    
    public void demonstrate() {
    	STATE_StartState startState = new STATE_StartState();
    	startState.doAction(this.context);

    	STATE_StopState stopState = new STATE_StopState();
    	stopState.doAction(this.context);
    	
    	System.debug(String.valueOf(this.context.getState()));
    }
}