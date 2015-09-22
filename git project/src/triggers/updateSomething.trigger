trigger updateSomething on Account (after insert, after update)
{

    /*  This trigger performs its logic when the call is not from @future */
    if(Utility.isFutureUpdate != true)
    {

        Set<Id> idsToProcess = new Set<Id>();

        for(Account acct : trigger.new)
        {
            if(acct.NumberOfEmployees > 500)
            {
                idsToProcess.add(acct.Id);
            }
        }

        /* Sending Ids to @future method for processing */
        futureMethods.processLargeAccounts(idsToProcess);

    }
}