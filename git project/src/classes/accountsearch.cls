public with sharing class accountsearch  {
 // private ApexPages.StandardController controller {get; set;}
  public List<account> searchResults {get;set;}
  public string searchText{get;set;}
  public accountsearch(ApexPages.StandardController controller) { }
  public PageReference search() {
          String qry = 'select  Name,billingstate,phone,website from account '+' where name LIKE \'%'+searchText+'%\' order by name '; 
        searchResults = Database.query(qry);
         if (searchResults.size() == 0){
       ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Warning,'No Accounts Found'));
       }
    return null; 
  }
}