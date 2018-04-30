trigger optytrigger on Opportunity (before update, after update, before insert, after insert) {
System.debug('TRIGGER****Total Number of SOQL Queries allowed in this apex code context: ' +  Limits.getLimitQueries());
System.debug('TRIHHER*****Total Number of SOQL Queries USED in this apex code context: ' +  Limits.getQueries());


system.debug('This is just for testing ');

}