trigger ClosedOpportunityTrigger on Opportunity (before insert, before Update) 
{
	list<task> taskList = new list<task>();
    
    for(Opportunity o: trigger.new)
    {
        task t = new task();
        if(o.StageName == 'Closed Won')
        {
            t.Subject = 'Follow Up Test Task';
            t.WhatId = o.id;
            taskList.add(t);
        }
    }
    insert taskList;
    
}