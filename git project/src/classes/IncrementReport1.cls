global class IncrementReport1 implements Schedulable {
  
   global void execute(SchedulableContext SC) {
      //System.debug('Entered Cron trigger');
       
       
       Account a = [SELECT Id, Name, reporttrigger__c FROM Account where Name='Generate report' LIMIT 1];
       System.debug('updating trigger to: ' + a);
      a.reporttrigger__c += 1;
      System.debug('updating trigger to: ' + a.reporttrigger__c);
      update a;
      
      }   
}