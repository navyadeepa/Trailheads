public class ContactSearch 
{
	public static List<Contact> searchForContacts(String a, string b)
    {
        List<Contact> cont= [select ID, name, Lastname, MailingPostalCode 
                       from Contact
                       where Lastname = :a AND MailingPostalCode = :b];
        
            
        return cont;
    }
}