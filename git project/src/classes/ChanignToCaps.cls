global class ChanignToCaps{
   global static void Change( Account [] acc){
      for(Account a :acc){
         if(a.Name!=null || a.Name != ' '){
           a.name= formatToUpper(a.name);
   }
   if(a.BillingStreet != null )
    a.BillingStreet = formatToUpper(a.BillingStreet);
 
   if(a.BillingCity !=null)
    a.BillingCity = formatToUpper(a.BillingCity);
 
   if(a.BillingState !=null )
    a.BillingState= formatToUpper(a.BillingState);
 
   if(a.BillingPostalCode !=null )
    a.BillingPostalCode = formatToUpper(a.BillingPostalCode);
 
   if(a.BillingCountry !=null )
    a.BillingCountry= formatToUpper(a.BillingCountry);
   }
}
public static String formatToUpper (String Str) {
String result = '';
for (String iter : Str.split('[ ]+')) {
   if (iter != null && iter != '') {
    if (iter.length() > 1) {
     result += iter.substring(0,1).toUpperCase() + iter.substring(1,iter.length()) + ' ';
    }
    else
     result += iter.substring(0,1).toUpperCase() + ' ';
   }
}
return result;
}
}