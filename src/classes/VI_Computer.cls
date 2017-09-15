public with sharing class VI_Computer implements VI_ComputerPartIntf {
	List<VI_ComputerPartIntf> computerPartList;
	
	public VI_Computer(VI_Mouse mouse, VI_Keyboard keyboard, VI_Monitor monitor) {
		computerPartList = new List<VI_ComputerPartIntf>{mouse, keyboard, monitor}; 
	}
	
	public VI_Computer() {
		this(new VI_Mouse(), new VI_Keyboard(), new VI_Monitor());
	}
		
	public void accept (VI_ComputerPartVisitorIntf computerPartVisitor) {
		for (VI_ComputerPartIntf part : computerPartList) {
			part.accept(computerPartVisitor);
		}
		computerPartVisitor.visit(this);
	}    
}