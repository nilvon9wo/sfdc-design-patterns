public with sharing class OSC_SingleObjectDemo {
	public static void main(){
		(new OSC_SingleObjectDemo()).demonstrate();
	}    
	
	private void demonstrate(){
		OSC_SingleObject.instance.showMessage();
	}
}