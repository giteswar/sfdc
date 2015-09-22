public class paginationController {
     Integer recordLimit = 10;
     Integer offSetLimit = 0;
     Public List<Account> lstAcct {
         get{
                 lstAcct = [select Id,name,Accountnumber,phone from Account Limit :recordLimit OFFSET :offSetLimit ];
                 return lstAcct;
             }set;
     }
      
     public paginationController (){
         
     }
      
     Public pagereference Next(){
         offSetLimit = offSetLimit + 4;
         return null;
     }
      
     Public pagereference Previous(){
         if(offSetLimit > 0)
             offSetLimit = offSetLimit - 4;
         return null;
     }
}