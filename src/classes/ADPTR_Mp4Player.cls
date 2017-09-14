public with sharing class ADPTR_Mp4Player implements ADPTR_AdvancedMediaPlayerIntf {
    public void playMp4(String fileName) {
    	System.debug('Playing mp4 file.  Name: ' + fileName);
    }

    public void playVlc(String fileName) {
    	// Do nothing
    }
}