public with sharing class Customsettingcontroller {
 public customsettingcontroller(){
 soql=[select name,city__c from customobject__c];
 
}
public customobject__c fields{get;set;}
public list<customobject__c>soql{get;set;}
}