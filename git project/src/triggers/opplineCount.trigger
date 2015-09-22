trigger opplineCount  on Contact ( after insert, after update,after delete,after undelete) {
     Set<Id> accountIdSet=new Set<Id>();
     List<Account> accListToUpdate=new List<Account>();
    if(Trigger.isInsert || Trigger.isUpdate || Trigger.isUndelete){
        for(Contact con : Trigger.new){
            if(con.AccountId != null)
                accountIdSet.add(con.AccountId);     
        }
    }If(Trigger.isDelete){
       for(Contact con: Trigger.old){
            if(con.AccountId != null)
                accountIdSet.add(con.AccountId);        
        }
    }
   for(AggregateResult res : [SELECT count(Id)can,AccountId FROM Contact WHERE AccountId IN :accountIdSet group by AccountId]) {
          accListToUpdate.add(new Account(Id=(Id)res.get('AccountId'),Contact_Count__c=(Integer)res.get('can')));
    }
    try{
      update accListToUpdate;
    }catch(DmlException de){
      System.debug(de);
    }
}