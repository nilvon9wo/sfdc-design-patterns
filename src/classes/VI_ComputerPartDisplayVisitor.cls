public with sharing class VI_ComputerPartDisplayVisitor implements VI_ComputerPartVisitorIntf {
    public void visit(VI_Computer computer) {
    	System.debug('Displaying Computer.');
    }
    
    public void visit(VI_Keyboard keyboard) {
    	System.debug('Displaying Keyboard.');
    }
    
    public void visit(VI_Monitor monitor) {
    	System.debug('Displaying Monitor.');
    }
    
    public void visit(VI_Mouse mouse) {
    	System.debug('Displaying Mouse.');
    }
    
}