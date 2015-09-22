public class example23 {
 
 public Boolean bool { get; set; }
 public Boolean option { get; set; }
 public PageReference change() {
 if(option == true)
 bool = true;
 else
 bool = false;
 return null;
 }
 
public example23(){
bool =false;
}
  
}