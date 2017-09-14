public with sharing abstract class OBS_AbstractObserver implements OBS_ObserverIntf {
	protected OBS_Subject subject;
    public abstract void doUpdate();
}