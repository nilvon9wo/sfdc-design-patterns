public with sharing class MEMTO_MementoPatternDemo {
	MEMTO_CareTaker careTaker;
	MEMTO_Originator originator;
	
	public MEMTO_MementoPatternDemo(MEMTO_CareTaker careTaker, MEMTO_Originator originator) {
		this.careTaker = careTaker;
		this.originator = originator; 
	}
 
	public MEMTO_MementoPatternDemo() {
		this(new MEMTO_CareTaker(), new MEMTO_Originator());
	}
	
	public static void main() {
		(new MEMTO_MementoPatternDemo()).demonstrate(); 
	}
	
	public void demonstrate() {
		this.originator.state = 'State #1';
		this.originator.state = 'State #2';
		this.careTaker.add(originator.saveStateToMemento());
		
		this.originator.state = 'State #3';
		this.careTaker.add(originator.saveStateToMemento());

		this.originator.state = 'State #4';
		System.debug('Current State: ' + originator.state);
		
		originator.getStateFromMemento(careTaker.get(0));
		System.debug('First saved State: ' + this.originator.state);
		
		originator.getStateFromMemento(careTaker.get(1));
		System.debug('Second saved State: ' + this.originator.state);
	}
}