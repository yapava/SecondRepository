public with sharing class casecontroller_ApprovalName{
    public String TaskIds{get;set;}
    public case tsk{get;set;}
    Public ProcessInstanceworkitem pitem{get;set;}

 public ProcessInstanceworkitem getApprovalSteps() { 
       System.debug('Inside approvername');
       System.debug('TaskIds::'+TaskIds);
      if (TaskIds!= null) {
        pitem= [SELECT Id, OriginalActorId,SystemModstamp, ActorId,Actor.name, ProcessInstanceId,ProcessInstance.targetobjectid FROM ProcessInstanceWorkitem where ProcessInstance.TargetObjectId=:TaskIds order by SystemModstamp desc Limit 1];   
        
      }
      System.debug('pitem::'+pitem );
      return pitem ;
    } 
 
}