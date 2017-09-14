public with sharing class STATE_StartState implements STATE_StateIntf {
    public void doAction(STATE_ContextIntf context) {
    	System.debug('Player is in start state');
    	context.setState(this);
    }
    
    public override String toString() {
    	return 'Start State';
    }
}