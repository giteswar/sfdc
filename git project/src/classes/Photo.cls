public with sharing class Photo {
public Photo(){
photos1=new list<image__c>();
photos=new image__c();
photos1=[select comment__c from image__c ];
}

    public PageReference data() {
     insert photos;
        return null;
    }

 public image__c photos {get;set;}
 public list<image__c> photos1 {get;set;}
}