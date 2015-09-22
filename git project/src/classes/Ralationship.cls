public with sharing class Ralationship {
 public list<Account>relist{get;set;}
  public Ralationship(){
   relist=[select name,(select Name from contacts),(select amount from opportunities)from Account];
  } 
}