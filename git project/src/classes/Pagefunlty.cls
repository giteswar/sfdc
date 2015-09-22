public with sharing class Pagefunlty {

 public list<WrapperClass> Wrapper {get;set;}
  public Boolean multiselectcheck {get;set;}
  
 public Pagefunlty(){
   wrapper=new list<Wrapperclass>();
    list<Lead>each=[select id,name,Phone from Lead ];
    for(Lead b:each){
     wrapper.add(new wrapperclass(b));
     
    }
 }
 
 public PageReference multiselect() {
  if(multiselectcheck==true){
     for(Wrapperclass ch:wrapper){
     ch.eachcheck=true;
     }
     }
     else{
     for(Wrapperclass ch:wrapper){
        ch.eachcheck=false;
     }
     }
     return null;
     }
 
 public class WrapperClass{
    public Lead field {get;set;}
    public Boolean eachcheck { get; set; }
    
    public WrapperClass(Lead field1){
    field=field1;
    eachcheck=false;
    }
    }
}