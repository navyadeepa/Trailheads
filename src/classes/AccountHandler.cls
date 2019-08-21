public class AccountHandler 
{
    public static Account insertNewAccount(String AccName)
    {
        Account acct= new Account();
        acct.Name=AccName;
        try
        {
            insert acct;
        }
        catch(DMLException e)
        {
            return null;
        }
        return acct;
    }

}