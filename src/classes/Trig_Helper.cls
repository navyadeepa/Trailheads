public class Trig_Helper 
{
    public static void Meth1(List<Suggestion__c> a)
    {  
   	 for(Suggestion__c s: a)
     {
      
      if(s.Suggestion_Catego__c == null)
      {
       s.Suggestion_Catego__c = 'Kitchen Snacks';
      }
      
      if(s.Suggestion_Catego__c == null)
      {
       s.Suggestion_Catego__c = 'Other';
      }
     }  
    }
}
    /*
    public static void Meth2(List<Suggestions__c> a)
    {
     for(Suggestion__c s: a)
     {
      if(s.Suggestion_Catego__c == null)
      {
       s.Suggestion_Catego__c = 'Other';
      }
     }
    }
}*/