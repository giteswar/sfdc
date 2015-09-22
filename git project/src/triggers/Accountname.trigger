trigger Accountname on Account (before insert,before update) {
  list<Account>a1=trigger.new;
  list<Account>a2= new list<Account>();
  list<Account>addlist=new list<Account>();
  a2=[select id,name from Account];
  
 
  for(Account a11:a1){
   for(Account a22:a2){
    if(a11.name==a22.name){
     addlist.add(a11);
    }
    if(addlist.size()>=4)
         {
             a11.name.adderror('cannot add more bottles with same brand name');
         }
   }
    }
    
}