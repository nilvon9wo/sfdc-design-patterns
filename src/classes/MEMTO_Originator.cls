public with sharing class MEMTO_Originator {
    public String state;
    
    public MEMTO_Memento saveStateToMemento() {
    	return new MEMTO_Memento(this.state);
    }
    
    public void getStateFromMemento(MEMTO_Memento memento) {
    	this.state = memento.state;
    }
}