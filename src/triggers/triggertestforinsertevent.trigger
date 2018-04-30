trigger triggertestforinsertevent on Task (before insert, before update, after insert, before delete, after delete, after undelete, after update) {
static integer i=0;
for(task singletask: trigger.new){
i++;
system.debug('Task record' +System.now() +'Task Id'+ singletask.id);
system.debug('I value is' +System.now() + i);

}

}