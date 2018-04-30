public Class SoqlTestInVFTemplate{
  public static ID dealOpptyID;
        public ID getDealOpptyID(){ 
        return dealOpptyID; }
        public void setDealOpptyID(ID oId){
        dealOpptyID = oId;
        
        //List<Opportunity> optyDealStatus =new list<Opportunity>();
        //optyDealStatus =[Select id from Opportunity where id=:dealOpptyID];
        System.debug('SET Method Here');
        SoqlTestInVFTemplate();
        //SoqlTestInVFTemplate s = new SoqlTestInVFTemplate();
        //System.debug('SET****Total Number of SOQL Queries allowed in this apex code context: ' +  Limits.getLimitQueries());
//System.debug('SET*****Total Number of SOQL Queries USED in this apex code context: ' +  Limits.getQueries());


        }
       //SoqlTestInVFTemplate s = new SoqlTestInVFTemplate();
    Public void SoqlTestInVFTemplate(){
    
    System.debug('********Total Number of SOQL Queries allowed in this apex code context: ' +  Limits.getLimitQueries());
System.debug('**********Total Number of SOQL Queries USED in this apex code context: ' +  Limits.getQueries());


        
        List<Opportunity> optyDealStatus =new list<Opportunity>();
        optyDealStatus =[Select id from Opportunity where id=:dealOpptyID];
        
        System.debug('##########Total Number of SOQL Queries allowed in this apex code context: ' +  Limits.getLimitQueries());
System.debug('########Total Number of SOQL Queries USED in this apex code context: ' +  Limits.getQueries());
    
    }
}