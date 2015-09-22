@istest
public class testcontrollerpage {
    public static testmethod void testController(){
        Account accdata=new Account();
        accdata.Name='test';
        accdata.phone='453657970';
            insert accdata;
        
        
        controllerpage test=new controllerpage();
        test.getRecordsToDisplay();
        test.getPrevSize();
        test.getNextSize();
        test.getCurrentSize();
        
        
    }
}