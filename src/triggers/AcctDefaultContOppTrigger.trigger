trigger AcctDefaultContOppTrigger on Account (after insert) 
{    
    for(Account a: trigger.new)
    {
        Contact c = new Contact();
        c.lastname = 'DefaultCon' + a.name;
        c.Accountid = a.Id;
        insert c;
    
        Opportunity o = new Opportunity();
        o.Name =  'DefaultOpp' + a.name;
        o.Accountid = a.Id;
        o.CloseDate = system.today() + 30;
        o.Discount_Percent__c = 50;
        o.StageName = 'Prospecting';
        insert o;
    }
}