public with sharing abstract class TMPL_AbstractGame {
	abstract void initialize();
	abstract void startPlay();
	abstract void endPlay();
	
	public void play() {
		initialize();
		startPlay();
		endPlay();
	}    
}