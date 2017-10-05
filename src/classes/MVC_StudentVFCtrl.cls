public with sharing class MVC_StudentVFCtrl {
        private DAO_StudentDao studentDao;
        private MVC_VfPageWrapper vfPageWrapper;
        
        public final Student__c student {get; private set;}
        
        public MVC_StudentVFCtrl(DAO_StudentDao studentDao, MVC_VfPageWrapper vfPageWrapper) {
                this.studentDao = studentDao;
                this.vfPageWrapper = vfPageWrapper; 
                
                Id studentId = vfPageWrapper.id;
                this.student = this.studentDao.selectById(studentId);
        } 

        public MVC_StudentVFCtrl() {
                this(new DAO_StudentDao(), new MVC_VfPageWrapper());
        }
        
        public PageReference save() {
                this.studentDao.doUpdate(this.student);
                return null;
        }
}