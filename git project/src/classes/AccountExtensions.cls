public with sharing class AccountExtensions {
public Boolean fieldsshow{set;get;}

    public AccountExtensions(ApexPages.StandardController controller) {
     //fieldsshow=false;
    }
    public Pagereference clicknewshowfields(){
    fieldsshow=false;
    return null;
    }
    

}