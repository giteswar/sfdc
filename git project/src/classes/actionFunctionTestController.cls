public with sharing class actionFunctionTestController {
    public actionFunctionTestController(ApexPages.StandardController controller) {
    }
    public void receiveInput() {
       String input1=Apexpages.currentPage().getParameters().get('input1');
        system.debug('==Entered the Controller: '+ input1);
        
      
        
    }
}