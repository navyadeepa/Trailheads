trigger DeletingDupliRec on Employee__c (before insert) {
    set<String> empset = new set<string>();
    for(Employee__c e: Trigger.new)
    {
        empset.add(e.name);
    }
    
    List<Employee__c> EmpList = [select id, Name from Employee__c where Name =:empset];
    if(empList.size()> 0 && empList != NULL)
    {
        delete EmpList;
    }
}