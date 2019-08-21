trigger Trigger_basic on Opportunity (Before Update, Before Insert)
{
for(opportunity o: trigger.new)
{
if(o.Amount<=500)
o.adderror('Amount should be greater than 500');
}

}