public with sharing class STATE_Context implements STATE_ContextIntf {
	private STATE_StateIntf state;
	public void setState(STATE_StateIntf state) {
		this.state = state;
	}	 
	public STATE_StateIntf getState() {
		return this.state;
	}	 
}