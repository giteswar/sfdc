trigger Recursive on Account (after insert,after update) {
if(trigger.isbefore && trigger.isinsert){
Account acc=[select id,name from Account where name='sam' limit 1];
acc.name='samrao';
update acc;
}
if(trigger.isafter && trigger.isupdate){
Account a=new Account(name='satish');
insert a;
}
}