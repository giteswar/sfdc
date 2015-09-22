/*
    Created by: Greg Hacic
    Last Update: 28 March 2014 by Greg Hacic
    Questions?: greg@interactiveties.com
    
    Notes:
        - Directs the User to the standard Lead conversion page but pre-populates the "Do not create a new opportunity upon conversion." checkbox
*/
public class leadConvertButtonOverride {
    
    private final Lead lead; //variable for the standard Lead object
    
    public leadConvertButtonOverride(ApexPages.StandardController standardPageController) {
        this.lead = (Lead)standardPageController.getRecord(); //initialize the standard controller
    }
    
    public PageReference redirectToConvertionPage() {
        PageReference nextPage = new PageReference('/lead/leadconvert.jsp'); //set the starting point for the page reference to which the User will be sent
        nextPage = encodeAndSetParam(nextPage, 'retURL', lead.Id); //set the retURL parameter in order to allow for returning to Lead if User cancels from page
        nextPage = encodeAndSetParam(nextPage, 'id', lead.Id); //set the id parameter so that the conversion page knows the proper record
        nextPage = encodeAndSetParam(nextPage, 'nooppti', '1'); //set the nooppti parameter to pre-populate the "Do not create a new opportunity upon conversion." checkbox
        nextPage = encodeAndSetParam(nextPage, 'nooverride', '1'); //set the nooverride parameter in order to prevent looping in the user interface
        nextPage.setRedirect(true); //indicate that the redirect should be performed on the client side
        return nextPage; //send the User to the Lead conversion page
    }
    
    public PageReference encodeAndSetParam(PageReference passedPageReference, String passedParameterId, String passedParameterValue){
        if (passedParameterValue != null) { //if the passedParameterValue is not null
            String encodedParameterValue = EncodingUtil.urlEncode(passedParameterValue, 'UTF-8'); //encode the value that was passed to eliminate conflicts with unsafe characters
            passedPageReference.getParameters().put(passedParameterId, EncodingUtil.urlDecode(encodedParameterValue, 'UTF-8')); //add the parameter to the page reference
        }
        return passedPageReference;
    }

}