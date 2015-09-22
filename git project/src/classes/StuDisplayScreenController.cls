Public class StuDisplayScreenController{
    //List of type of our wrapper class
    Public List<StuDisplayWrapper > stuWrapperList {get; set;}
    /*This is the constructor for class*/
    public StuDisplayScreenController(ApexPages.StandardController controller){
        if(stuWrapperList == null) {
            //Create new instance of the list that will store wrapper class instances
            stuWrapperList = new List<StuDisplayWrapper >();
            //Query some opportunity records randomly
            for(studnet__c st: [select Id,name__c,CourseName__c from studnet__c]) {
                // add the opportunity records and bollean flag to the wrapper class instances one by one
                stuWrapperList.add(new StuDisplayWrapper(st,false));
            }
        }
    }      
    /*This is the wrapper class*/
    public class StuDisplayWrapper {
        public studnet__c stuRec{get; set;}
        public Boolean stuflag{get; set;}
        /*This is the constructor for wrapper class*/ 
        public StuDisplayWrapper (studnet__c stu,Boolean stuflagvalue) {
            stuRec = stu;
            stuflag= stuflagvalue;
        }
    }
}