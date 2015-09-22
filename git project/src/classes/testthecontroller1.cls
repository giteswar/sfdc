@isTest
                    
public class testthecontroller1 {

    public static testMethod void testMyController() {
        PageReference pageRef = Page.failure;
        Test.setCurrentPage(pageRef);
      
        thecontroller controller = new thecontroller();
        String nextPage = controller.save().getUrl();

        // Verify that page fails without parameters
        System.assertEquals('/apex/failure?error=noParam', nextPage);

        // Add parameters to page URL
        ApexPages.currentPage().getParameters().put('qp', 'yyyy');
      
        // Instantiate a new controller with all parameters in the page
        controller = new thecontroller(); 
        controller.setLastName('');
        controller.getLastName();
        controller.setFirstName('');
        controller.getFirstName();
        controller.setCompany('');
        controller.getCompany();
        controller.setEmail('');
        controller.getEmail();
        nextPage = controller.save().getUrl();
        system.debug(controller);

        // Verify that the success page displays
        System.assertEquals('/apex/failure', nextPage);
        Lead[] leads = [select id, email from lead where Company = ''];
        System.assertEquals('firstlast@acme.com', leads[0].email);
    }
}