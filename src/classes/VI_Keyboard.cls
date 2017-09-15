public with sharing class VI_Keyboard implements VI_ComputerPartIntf {
	public void accept (VI_ComputerPartVisitorIntf computerPartVisitor) {
		computerPartVisitor.visit(this);
	}    
}