public with sharing class VI_VisitorPatternDemo {
	VI_ComputerPartIntf computerPart;
	VI_ComputerPartDisplayVisitor computerPartDisplayVisitor;
	
    public VI_VisitorPatternDemo(VI_ComputerPartIntf computerPart, VI_ComputerPartDisplayVisitor computerPartDisplayVisitor) {
    	this.computerPart = computerPart;
    	this.computerPartDisplayVisitor = computerPartDisplayVisitor;
    }

    public VI_VisitorPatternDemo() {
    	this(new VI_Computer(), new VI_ComputerPartDisplayVisitor());
    }
    
    public static void main(){
    	(new VI_VisitorPatternDemo()).demonstrate();
    }
    
    public void demonstrate() {
    	this.computerPart.accept(computerPartDisplayVisitor);
    }
}