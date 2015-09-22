trigger storedata on image__c (after insert) {
if (Trigger.isInsert) {
 for(image__c s:trigger.new){
  s.storeencrypted__c=s.Encrypted__c;
 
 }
 }

}