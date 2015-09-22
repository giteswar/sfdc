public class showpgbtable {
 public list<Account> acc1 = new list<account>();
public Boolean rendered{set;get;}
public showpgbtable(){ //constructor
rendered =false;
}
 public pageReference Accountlist(){
    acc1 = [select id,name from account ]; 
     rendered  = true; 
    return null;
   }
   public list<account> getaccounts(){
   return acc1;
   }
   }