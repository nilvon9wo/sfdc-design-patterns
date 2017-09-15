public with sharing class MVC_MVCPatternDemo {
    MVC_StudentDao studentDao;
    MVC_StudentView studentView;
    
    public MVC_MVCPatternDemo(MVC_StudentDao studentDao, MVC_StudentView studentView) {
    	this.studentDao = studentDao;
    	this.studentView = studentView;
    }
    
    public MVC_MVCPatternDemo() {
    	this(new MVC_StudentDao(), new MVC_StudentView());
    }
    
    public static void main() {
    	(new MVC_MVCPatternDemo()).demonstrate();
    }
    
    private void demonstrate() {
    	MVC_Student model = this.studentDao.retrieve();
    	MVC_StudentCtrl controller = new MVC_StudentCtrl(model, this.studentView);
    	controller.updateView();
    	
    	controller.setStudentName('John');
    	controller.updateView();
    }
}