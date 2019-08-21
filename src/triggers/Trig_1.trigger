trigger Trig_1 on Suggestion__c (before insert, before update)
{
    
   
    if(trigger.isBefore && trigger.isInsert)
    {
   // Trig_Helper a = new Trig_Helper();
        
        Trig_Helper.Meth1(Trigger.new);
    }
    if(trigger.isBefore && trigger.isUpdate)
    Trig_Helper.Meth1(Trigger.new);
    

}