public class PDFController {
    public List<Account> listaccounts {get;set;}
   
    public PDFController() {
        listaccounts = new List<Account>();
        listaccounts = [SELECT Name, phone FROM Account];
    }
}