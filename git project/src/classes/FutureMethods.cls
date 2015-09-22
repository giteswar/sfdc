public class FutureMethods
{

    @future
    public static void processLargeAccounts(Set<Id> acctIDs)
    {

        List<Account> acctsToUpdate = new List<Account>();

        /* isFutureUpdate is set to true to avoid recursion */
        Utility.isFutureUpdate = true;
       
        update acctsToUpdate;
    }
}