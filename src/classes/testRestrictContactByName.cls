@IsTest
private class testRestrictContactByName {
    
    @IsTest 
    static void testInsert(){
    Account acct = new Account(Name='TestingAcct');
    insert acct;
    Contact cnt = new Contact(
                              firstname='Error',
                              Lastname='INVALIDNAME', 
                              Stage__c='Prospect', 
                              AccountId=acct.Id);
    
    Test.startTest();
    Try{
        insert cnt;
    }
    catch(Exception e){
        Test.stopTest();
    }
    }
}