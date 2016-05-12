{
if(length($1)!=0)
{
state=$1
#if (match(state,/[^=]*/)) {
if(state~/.*=.*/){
#valueStr=substr(state,RSTART+RLENGTH+1,length(state));
valueStr=state;
sub(/[^=]*=/,"a",valueStr);
sub(",","|",valueStr);

print "("valueStr")"
}
}else 
print "null"
}
