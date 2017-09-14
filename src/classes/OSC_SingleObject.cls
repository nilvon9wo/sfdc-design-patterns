public with sharing class OSC_SingleObject {
	public static OSC_SingleObject instance {
		public get {
			if (instance == null) {
				instance = new OSC_SingleObject();
			}
			return instance;
		}
		private set;
	} 
	
	private OSC_SingleObject(){}
	
	public void showMessage() {
		System.debug('Hello World!');
	}
}