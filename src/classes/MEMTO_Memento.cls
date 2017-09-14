public with sharing class MEMTO_Memento {
    public String state {get; private set;}
    
    public MEMTO_Memento(String state) {
    	this.state = state;
    }
}