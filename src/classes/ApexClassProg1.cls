public class ApexClassProg1 
{
    public string Name{get;set;}
    public string Phone{get;set;}
    public string Fax{get;set;}
    public string AccountNumber{get;set;}
    
    public void DemoStoringValues()
    {
        Account acc= New Account();
        acc.Name=Name;
        acc.Fax=Fax;
        acc.Phone=Phone;
        acc.AccountNumber=AccountNumber;
        insert acc;
    }
    
}