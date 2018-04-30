trigger pftrigger on PE_Object__e (after insert) {

    List<case> caselist = new List<case>();

        for(PE_Object__e  pe: trigger.new){
            if(pe.Object_Name__c == 'case'){
                case singlecase = new case();
                singlecase.Status =   'Platform Event';
                singlecase.Origin=   'PF';
                singlecase.Type=   'Other';
                singlecase.PotentialLiability__c=   'Yes';
                
                caselist.add(singlecase);
            }     
        }
    If(caselist!= null && caselist.size() > 0)
    insert caselist;
}