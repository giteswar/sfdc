public class extContactList {
   

    public extContactList(ApexPages.StandardController controller) {

    }
   
    public List <Contact> getContactList(){
    List <Contact> c = [select id, FirstName, LastName from Contact Limit 10];
   
    return c;
   
    }

}