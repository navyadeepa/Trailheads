public class ContactAndLeadSearch 
{
    
    public static list<list<SObject>> searchContactsAndLeads(String s)
    {
         String searchQuery = 'find \'' + s + '\' in all fields Returning Contact(lastname, firstname), Lead(lastname, firstname, company)';
        list<list<sObject>> searchConLead = search.query(searchQuery);
        
        return searchConLead;
    }

}