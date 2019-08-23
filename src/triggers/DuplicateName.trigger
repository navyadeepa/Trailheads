trigger DuplicateName on Employee__c (before insert, before update) {   
    set<string> empNames = new set<String>();
     for(Employee__c e : Trigger.New)
        {
         empNames.add(e.name);
        }
    list<Employee__c> empList = [select id, name from Employee__c where name =:empnames];
    
   
    for(Employee__c e : Trigger.New)
        
    if(e.name != null)
        e.adderror('Duplicate Record');
        
        // saving changes
}