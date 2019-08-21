public class StringArrayTest
{ 
    public static List<String>generateStringArray(Integer n)
    {
        list<string> myarray= new list<string>();  
        for(Integer i=0; i<n; i++)
    	{
        myarray.add('Test ' +i);
        system.debug(myarray[i]);
    	}
        return myarray;
    }
}