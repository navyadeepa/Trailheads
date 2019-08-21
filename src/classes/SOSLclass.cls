public class SOSLclass
{
    public list<Lead> leadInfo{get;set;}
    public list<Account> accountInfo{get;set;}
    public list<Employee__c> empInfo{get;set;}
    
    public void SOSLdataretrieve()
    {
        list<list<sObject>> demo= [find 'deepa' in all fields returning Lead(Id, Name, Company, Phone), Account(Id, Name), Employee__c(Name, Emp_No__c)];
        
        leadInfo = ((list<Lead>)demo[0]);
        accountInfo = ((list<Account>)demo[1]);
        empInfo = ((list<Employee__c>)demo[2]);
    }
}