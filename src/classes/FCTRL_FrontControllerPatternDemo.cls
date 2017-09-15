public with sharing class FCTRL_FrontControllerPatternDemo {
 	FCTRL_FrontCtrl frontController;
 	
 	public FCTRL_FrontControllerPatternDemo(FCTRL_FrontCtrl frontController) {
 		this.frontController = frontController;
 	}

 	public FCTRL_FrontControllerPatternDemo() {
 		this(new FCTRL_FrontCtrl());
 	}
 	
 	public static void main() {
 		(new FCTRL_FrontControllerPatternDemo()).demonstrate();
 	} 
 	
 	private void demonstrate() {
 		this.frontController.dispatchRequest(FCTRL_RequestType.HOME);
 		this.frontController.dispatchRequest(FCTRL_RequestType.STUDENT);
 	}
}