public with sharing class StudentController {
public list<Studnet__c> strecord {get;set;}
//constructor
public StudentController(){
strecord=new list<Studnet__c>();
strecord=[select id,name__c,CourseName__c from Studnet__c ];
}

}