public class ContacControllerWrapper {
    public list<ContactWrapper>contactList{get; set;}
    public list<Contact>selectedContacts{get; set;}
    
    public ContacControllerWrapper(){
        contactList=new list<ContactWrapper>();
        for(Contact c:[select FirstName,LastName, Email from Contact LIMIT 10]){
           contactList.add(new ContactWrapper(c));
        }
    }
    public void ContactsSelected(){
        selectedContacts=new List<Contact>();
        for(ContactWrapper obj:contactList){
            if(obj.selected==true){
                selectedContacts.add(obj.ct);
            }
        }
    }
    public class ContactWrapper{
        public Contact ct{get; set;}
        public Boolean selected{get; set;}
        public ContactWrapper(Contact c){
            ct=c;
            selected=false;
        }
    }
}