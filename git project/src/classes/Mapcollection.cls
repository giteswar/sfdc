public with sharing class Mapcollection {

   
    public String mycity { get; set; }
     map<string,list<string>> mybranches=new map<string,list<string>>();
      
    public String city { get; set; }
    public String branch { get; set; }
    public Mapcollection(){
     list<string> hyd=new list<string>();
     hyd.add('srnagar');
     hyd.add('hitech');
     list<string> bang=new list<string>();
     bang.add('white field');
     bang.add('Electronic city');
     mybranches.put('hyd',hyd);
     mybranches.put('bang',bang);
     
    }
    

}