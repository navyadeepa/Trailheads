trigger OppChildTrigger on Opportunity (before insert, before update)
{
    list<Opp_Childs__c> oppList = new list<Opp_Childs__c>();
    
    for(Opportunity o: trigger.new)
    {
        if(trigger.oldmap.get(o.id).stagename != 'Closed Won' && o.StageName == 'Closed Won')
        {
            Opp_Childs__c opp = new Opp_Childs__c();
            opp.Name = o.Name;
            opp.Opportunity__c = o.Id;
            oppList.add(opp);
        }
    }
    insert opplist;

}