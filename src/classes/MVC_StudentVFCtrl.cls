public with sharing class MVC_StudentVFCtrl {
        private DAO_StudentDao studentDao;
        private MVC_VfPageWrapper vfPageWrapper;
        
        public final Student__c student {get; private set;}
        
        public MVC_StudentVFCtrl(DAO_StudentDao studentDao, MVC_VfPageWrapper vfPageWrapper) {
                this.studentDao = studentDao;
                this.vfPageWrapper = vfPageWrapper; 
                
                Integer enrollmentNumber = Integer.valueOf(vfPageWrapper.parameterByNameMap.get('enrollmentNumber'));
                this.student = this.studentDao.selectByEnrollmentNumber(enrollmentNumber);
        } 

        public MVC_StudentVFCtrl() {
                this(new DAO_StudentDao(), new MVC_VfPageWrapper());
        }
         
        public PageReference doUpdate() {
                this.studentDao.doUpdate(this.student);
                return null;
        }
}