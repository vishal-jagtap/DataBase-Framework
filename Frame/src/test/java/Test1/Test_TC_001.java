package Test1;
import java.io.IOException;
import java.sql.SQLException;

import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

import Test1.TC_001;
import Test1.TC_002;

public class Test_TC_001 extends TestBuild{

	@BeforeTest
	public void DB_Con() throws IOException, SQLException
	{
		
		
		DB_Con D1= new DB_Con();
		
		D1.beforeClass();
		
		
		}	

	@Test
	public void TestRun_1() throws IOException
	{
		setup();
		
		TC_001 T1= new TC_001();
		
		T1.Test1(driver);
		
	}	
	
	@Test
	public void TestRun_2() throws IOException, SQLException
	{
		
		
		TC_002 T1= new TC_002();
		
		T1.Test2(driver);
		String name = null;
		String year = null;
		String rating = null;
		T1.testdata(name, year, rating);
		//T1.testdata(name, null, null);
		T1.afterClass();
	}	
	

	
	
}
