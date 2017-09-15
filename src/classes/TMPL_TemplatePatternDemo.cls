public with sharing class TMPL_TemplatePatternDemo {
	
	public static void main() {
		(new TMPL_TemplatePatternDemo()).demonstrate();
	}    
	
	private void demonstrate() {
		TMPL_AbstractGame game = new TMPL_Cricket();
		game.play();

		game = new TMPL_Football();
		game.play();
	}
}