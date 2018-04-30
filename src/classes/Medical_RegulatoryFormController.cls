public with sharing class Medical_RegulatoryFormController {

public Case objNewCase {get;set;}
public Regulatory_Question_Answer__c regQuestionAnswer1{get;set;}

    public Medical_RegulatoryFormController(ApexPages.StandardController controller) {
    string caseId = Apexpages.currentPage().getParameters().get('CaseId');
    objNewCase = [SELECT Id,CaseNumber
                      FROM Case 
                      WHERE Id = :caseId].get(0);

    }
    
    public PageReference saveForm(){
    system.debug('Hello testingjfefhefhef');
   string url = '/' + objNewCase.id;
pageReference pg = new PageReference(url);
     pg.setRedirect(true); 
      system.debug('Hello testing');
    return null;
    }

}