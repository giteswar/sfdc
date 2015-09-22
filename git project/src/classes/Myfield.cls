public with sharing class Myfield {

 public Myfield(){
    fields = new Account();
  fie1=true;
  fie2=false;
 }

    public PageReference fichange() {
    if(fields.rating=='cold'){
     fie2=true;
    }
        return null;
    }


    public Boolean fie2 { get; set; }

    public Boolean fie1 { get; set; }

 public Account fields {get;set;}
}