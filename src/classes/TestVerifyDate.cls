@isTest
private class TestVerifyDate {
    static testMethod void TestVerifyDate() {
      VerifyDate.CheckDates(System.today(),System.today().addDays(10));
       VerifyDate.CheckDates(System.today(),System.today().addDays(78));
    }
}


/*@isTest
private class TestVerifyDate {
    @isTest static void CheckDate()
    {
        Date d1 = date.today();
        Date d2 = d1.addDays(29);
        Date dt = VerifyDate.CheckDates(d1,d2);
        System.assertEquals(dt, d2);
    }

    @isTest static void DateOver()
    {
        Date d1 = date.today();
        Date d2 = d1.addDays(31);
        Date dt = VerifyDate.CheckDates(d1,d2);
        System.assertEquals(dt, d1);
	}
} */