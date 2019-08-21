trigger AccountAddressTrigger on Account (before insert, before Update) 
{
    //set<string> setAddress = new set<string>();
    for(Account a: trigger.new)
    {
        if(a.Match_Billing_Address__c == True)
        {
            a.Shippingpostalcode = a.Billingpostalcode;
        }
    }
   

}