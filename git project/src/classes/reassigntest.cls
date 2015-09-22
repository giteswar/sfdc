@isTest
private class reassigntest {
	
	//test for account update being made by incorrect user
	static testMethod void someContactsAndOpportunities() {
	//BEGIN: perform some setup steps...
		//create some testing accounts
		List<Account> accounts = new List<Account>();
		accounts.add(new Account(Name = 'Interactive Ties', Website = 'http://www.interactiveties.com/'));
		insert accounts; //insert the account list
		//create some testing contacts
		List<Contact> contacts = new List<Contact>();
		contacts.add(new Contact(AccountId = accounts[0].Id, FirstName = 'Tess', LastName = 'Dachshund', email='tess@ities.co')); //new Contact detail
		contacts.add(new Contact(AccountId = accounts[0].Id, FirstName = 'Grachus', LastName = 'Dachshund', email='grachus@ities.co')); //another new Contact detail
		insert contacts; //insert the contact list
		//create some testing opportunities
		List<Opportunity> opportunities = new List<Opportunity>();
		opportunities.add(new Opportunity(AccountId = accounts[0].Id, Amount = 20000, CloseDate = date.today(), Name = 'Test Opportunity', StageName = 'Identified'));
		opportunities.add(new Opportunity(AccountId = accounts[0].Id, Amount = 10000, CloseDate = date.today(), Name = 'Test Opportunity', StageName = 'Identified'));
		insert opportunities; //insert the opportunity list
		Profile prof = [SELECT Id FROM Profile WHERE Name = 'System Administrator']; //get a profile Id
		User user = new User(Alias = 'TDemo', Email = 'greg@interactiveties.com', EmailEncodingKey = 'ISO-8859-1', FirstName = 'Demo', LanguageLocaleKey = 'en_US', LastName = 'User', LocaleSidKey = 'en_US', ProfileId = prof.Id, TimeZoneSidKey = 'America/Denver', Username = 'demo.test.user@interactiveties.com'); //new User details
		insert user;
	//END: perform some setup steps...
		Test.startTest();
		//reassign the account
		List<Account> accountUpdates = new List<Account>(); //new List of Account sObjects
		accountUpdates.add(new Account(Id = accounts[0].Id, OwnerId = user.Id));
		update accountUpdates;
		Test.stopTest();
		//validate that the account is assigned properly
		Account a = [SELECT OwnerId FROM Account WHERE Id =: accounts[0].Id];
		System.assertEquals(a.OwnerId, user.Id);
		//validate that the contacts are assigned properly
		for (Contact c : [SELECT OwnerId FROM Contact WHERE AccountId =: accounts[0].Id]) {
			System.assertEquals(c.OwnerId, user.Id);
		}
		//validate that the opportunities are assigned properly
		for (Opportunity o : [SELECT OwnerId FROM Opportunity WHERE AccountId =: accounts[0].Id]) {
			System.assertEquals(o.OwnerId, user.Id);
		}
	}

}