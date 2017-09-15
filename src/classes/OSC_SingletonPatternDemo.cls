public with sharing class OSC_SingletonPatternDemo  {
	public static void main(){
		(new OSC_SingletonPatternDemo()).demonstrate();
	}    
	
	private void demonstrate(){
		OSC_SingleObject.instance.showMessage();
	}
}