trigger validatetest on Account (before update) {

for(account a: trigger.new){
system.debug('Hello'+a);
}

}