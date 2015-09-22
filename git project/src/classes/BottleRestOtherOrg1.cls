public class BottleRestOtherOrg1 {

   

    public bottle_rest__c btl_obj {set; get;}
    public string responses {set; get;}
    public Boolean view { get; set; }
    public BottleRestOtherOrg1.BottleRest bt { get; set; }
    
    public BottleRestOtherOrg1(){
        btl_obj = new Bottle_rest__c();
        bt = new BottleRestOtherOrg1.BottleRest();
    } 
    
    public PageReference mySave() {
                        
        if(btl_obj.Name__c!= null){
            try{                
                
            String reqbody='grant_type=password&client_id=3MVG9A2kN3Bn17hvrZcmTAwTmCTFPhbpatO5zI3SFSOGtp5LxABTia0epoxCXWOEWtfIIZLlMCYSDv4zdh2or&client_secret=4233921096158674557&username=eswar.rayal@develper.com&password=lakshmidevi1234qqCYER8AjQN1Kno3ohkl2i073';

                Http h = new Http();
                HttpRequest req = new HttpRequest();
                req.setBody(reqbody); 
                req.setMethod('POST');
                req.setEndpoint('https://login.salesforce.com/services/oauth2/token');
                req.setHeader('Content-Type', 'application/x-www-form-urlencoded'); 
                HttpResponse res = h.send(req);
                system.debug('Response'+res);                
     
    OAuth2 objAuthenticationInfo = (OAuth2)JSON.deserialize(res.getbody(), OAuth2.class); 
                
   if(objAuthenticationInfo.access_token != null){
  
                  
       String pretty = Json.serialize(bt); 
                                        
                    

       Http h1 = new Http();
       
      HttpRequest req1 = new HttpRequest();                    
      
      req1.setHeader('Authorization','Bearer '+objAuthenticationInfo.access_token);
     
      req1.setHeader('Content-Type','application/json; charset=UTF-8');
    
       req1.setHeader('Accept','application/json');


    
       req1.setBody(pretty);  
    
    

       req1.setMethod('POST');
    
    
       
req1.setEndpoint('https://na15.salesforce.com/01pi0000006WHqY/e/');
                                                   


       
HttpResponse res1 = h1.send(req1);

                     string b = res1.getBody().replace('','');
                     b = b.trim();
                     responses = bt.org_id = b;
                                         
                    btl_obj.name__c = bt.name;
                    btl_obj.cost__c = decimal.valueof(bt.cost);
                    btl_obj.quantity__c = integer.valueof(bt.quantity);
                    btl_obj.Org_ID__c = bt.org_id;

                    try{
                        insert btl_obj;
                    }catch(DMLException e){
                    
                    }
                    view = true;
                    btl_obj = new Bottle_rest__c();
               }    
            
           }Catch(Exception e){
               System.debug('Error');
               ApexPages.addMessage(new Apexpages.message(ApexPages.severity.error,' '+ e.getmessage()+'  ------  '+ e.getlinenumber()));
           } 
                   
        }else{
            apexpages.addmessage(new apexpages.message(apexpages.severity.error,'Please Enter the data First.'));
        }    
           
       return null;
    }
    
    //WrapperClass for OAuth
    public class OAuth2{
         public String id{get;set;}
         public String issued_at{get;set;}
         public String instance_url{get;set;}
         public String signature{get;set;}
         public String access_token{get;set;}    
    }
    
    
public class BottleRest{
        public string name {set; get;}
        public string cost {set; get;}
        public string quantity {set; get;}
        public string org_id {set; get;}
    }
}