public with sharing class TabController {

    public PageReference saveRecord() {
    insert accfields;
    insert confields;
    acclist=new list<Account>();
//acclist=[select name,billingaddress,phone,type from Account LIMIT 5];
    
        return null;
    }

public Account accfields{get;set;}
public contact confields{get;set;}
public list<Account> acclist{get;set;}

public list<contact> conlist{get;set;}
public TabController(){
accfields=new Account();
confields=new Contact();

/*
conlist=new list<contact>();
acclist=[select name,billingaddress,phone,type from Account LIMIT 5];
conlist=[select name,email,phone from contact LIMIT 5];*/
}
}