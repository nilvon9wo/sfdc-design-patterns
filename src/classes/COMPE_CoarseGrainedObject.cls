public with sharing class COMPE_CoarseGrainedObject {
    private COMPE_DependentObject1 dependentObject1;
    private COMPE_DependentObject2 dependentObject2;
    
    public COMPE_CoarseGrainedObject(COMPE_DependentObject1 dependentObject1, COMPE_DependentObject2 dependentObject2) {
    	this.dependentObject1 = dependentObject1;
    	this.dependentObject2 = dependentObject2;
    }
    
    public COMPE_CoarseGrainedObject() {
    	this(new COMPE_DependentObject1(), new COMPE_DependentObject2());
    }
    
    public void setData(String data1, String data2) {
    	this.dependentObject1.data = data1;
    	this.dependentObject2.data = data2;
    }
    
    public List<String> getData() {
    	return new List<String>{ this.dependentObject1.data, this.dependentObject2.data };
    }
}