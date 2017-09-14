public with sharing class OBS_Subject {
    private List<OBS_ObserverIntf> observerList = new List<OBS_ObserverIntf>();
    
    public Integer state {
    	get;
    	set {
    		this.state = value;
    		this.notifyAllObservers();
    	}
    }
    
    public void attach(OBS_ObserverIntf observer) {
    	observerList.add(observer);
    }
    
    public void notifyAllObservers() {
    	for (OBS_ObserverIntf observer: observerList) {
    		observer.doUpdate();
    	}
    }
}