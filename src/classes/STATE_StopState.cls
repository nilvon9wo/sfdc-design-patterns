public with sharing class STATE_StopState implements STATE_StateIntf {
    public void doAction(STATE_ContextIntf context) {
    	System.debug('Player is in stop state');
    	context.setState(this);
    }
    
    public override String toString() {
    	return 'Stop State';
    }
}