trigger Trigger_Advanced on Opportunity (After insert)
{
contact c= new contact();
for(opportunity o: trigger.new)
{
c.accountID = o.accountID;
c.firstname='Steve';
c.lastname='Jobs';
insert c;
}

}