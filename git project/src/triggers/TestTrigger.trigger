trigger TestTrigger on Contact (before insert) {
    if(p.firstRun)
    {
        p.firstRun = true;
        insert new Contact();
        
    }    
}