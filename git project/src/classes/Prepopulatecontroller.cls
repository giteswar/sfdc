Public class Prepopulatecontroller{
 
   Public Prepopulatecontroller(ApexPages.StandardController controller) {
 
   }
     
    Public pagereference Prepopulatemethod(){
        /*Build URL String to prepopulate field values*/
        String prePopulateURL;
        prePopulateURL = '/001/e?retURL=/001/o'+'&acc2=e Technologies';
        prePopulateURL =+prePopulateURL+'&acc3_lkid=0019000000RP2f4'+'&acc3=University of Arizona';
        prePopulateURL =+prePopulateURL+'&acc9=Hot';      
        pagereference retPg= new pagereference(prePopulateURL);
        //this is important to set else it will go in infinite loop and keep opening the same page
        retPg.getParameters().put('nooverride', '1');
        retPg.setredirect(TRUE);      
        return retPg;
    }
}