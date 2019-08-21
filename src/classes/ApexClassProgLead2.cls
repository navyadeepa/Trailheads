public class ApexClassProgLead2 
{
      public string Last_Name{get;set;}
    public string Company{get;set;}
    public string Title{get;set;}
    public string Phone{get;set;}
    public string Status{get;set;}
    
    public void InsertValuesLead()
    {
        Lead leadObj= New Lead();
         leadObj.LastName=Last_Name;
        leadObj.Company=Company;
        leadObj.Title=Title;
        leadObj.Phone=Phone;
        leadObj.Status=Status;
        
        insert leadObj;
    }
    
}