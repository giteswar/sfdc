public class groupwisedisplay {
 
public list<wrapgroupwise> singlegroup;
public List<wrapgroupwise> getStartHere(){
singlegroup= new List<wrapgroupwise>();
List<Account> tempacc=[select Id, Name from Account Limit 10];
 
for(Integer i=0; i<tempacc.size() ; i++){
list <contact> tempcon=[SELECT Id, FirstName, LastName,(SELECT Id, CaseNumber,Subject From Cases) From Contact Where AccountId =:tempacc[i].id Limit 10];
list <Opportunity> tempopp=[SELECT Id,Name,CloseDate,StageName From Opportunity Where AccountId =:tempacc[i].id Limit 10];
singlegroup.add( new wrapgroupwise(tempacc[i],tempcon,tempopp));
 
}
return singlegroup ;
 
}
 //wrapper class
 public class wrapgroupwise{
 public List<contact> con {get;set;}
 public Account acc {get;set;}
 public List<Opportunity> opp {get;set;}
 
 public wrapgroupwise( Account a , list<Contact> c,list<Opportunity> o){
 acc=a;
 con=c;
 opp=o;
 } //end of wrapper class
 }
}