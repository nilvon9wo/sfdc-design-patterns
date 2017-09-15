public with sharing class COMPE_CompositeEntity {
	COMPE_CoarseGrainedObject coarseGrainedObject;
    public COMPE_CompositeEntity(COMPE_CoarseGrainedObject coarseGrainedObject) {
    	this.coarseGrainedObject = coarseGrainedObject;
    }

    public COMPE_CompositeEntity() {
    	this(new COMPE_CoarseGrainedObject());
    }
    
    public void setData(String data1, String data2) {
    	this.coarseGrainedObject.setData(data1, data2);
    }
    
    public List<String> getData() {
    	return this.coarseGrainedObject.getData();
    }
}