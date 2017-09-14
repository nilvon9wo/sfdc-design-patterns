public with sharing class MEMTO_CareTaker {
    private List<MEMTO_Memento> mementoList = new List<MEMTO_Memento>();
    
    public void add(MEMTO_Memento memento) {
    	mementoList.add(memento);
    }
    
    public MEMTO_Memento get(Integer index) {
    	return mementoList[index];
    }
}