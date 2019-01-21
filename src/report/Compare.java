package report;

public class Compare {
	String time1="",time2="";
	int com=0;
	public void time() throws InterruptedException
	{
	time1=java.time.LocalDateTime.now().toString();
	Thread.sleep(5000);
	time2=java.time.LocalDateTime.now().toString();
	System.out.println(time1);
	System.out.println(time2);
	com=(time2.compareTo(time1));
	System.out.println(com+"here is the value of comparision");
	if(com<0)
	{
		
	}
	else if(com>1)
	{
		
	}
	}
	public static void main(String abc[]) throws InterruptedException
	{
		new Compare().time();
	}

}
