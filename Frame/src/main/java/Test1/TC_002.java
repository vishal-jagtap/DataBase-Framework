package Test1;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import com.mysql.jdbc.PreparedStatement;
import Test1.DB_Con;


public class TC_002 extends DB_Con{

	
	WebDriver driver;
    
	By table = By.xpath("//tbody[@class='lister-list']");
	By movie_name = By.xpath("//tbody[@class='lister-list']/tr");
	
	
	public void Test2(WebDriver driver)throws IOException
	{
		driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
		System.out.println("pass2");
		
		WebElement element= driver.findElement(table);
		List<WebElement> rows= element.findElements(movie_name);
		for(int i=1; i<=rows.size(); i++)
		{   
						
			//System.out.println("list: "+i);
			
			String name= driver.findElement(By.xpath("//tbody[@class='lister-list']/tr["+i+"]/td[2]/a")).getText();
			//System.out.println("MovieName: "+Name);
			
			String year= driver.findElement(By.xpath("//tbody[@class='lister-list']/tr["+i+"]/td[2]/span[@class='secondaryInfo']")).getText();
			//System.out.println("Year: "+year);
			
			String rating= driver.findElement(By.xpath("//tbody[@class='lister-list']/tr["+i+"]/td[3]")).getText();
			//System.out.println("Rating: "+rating);
			year=year.replace("(", "");
			year=year.replace(")", "");

			
			testdata(name, year, rating);
			
		}
		

		
	}
	
	public void testdata(String name, String year, String rating) 
	{
		      
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement("INSERT into movie(name,year,rating)VALUES(?,?,?)");
			
			
			ps.setString(1, name);
			
			ps.setInt(2, Integer.parseInt(year));
			
			ps.setDouble(3, Double.parseDouble(rating));
			
			ps.executeUpdate();
			
		}catch (SQLException e1) {
		
			e1.printStackTrace();
		}	
		catch(NumberFormatException e1){ 
			e1.printStackTrace();
		}
		
                
        try {
        	
        	
        	String query = "select * from movie";
        	// STEP 4: Extract data from result set
        	results = stmt.executeQuery(query);
        	
        	while (results.next()) {
        		
        		String t1 = results.getString("name");
        		String t2 = results.getString("year");
        		String t3 = results.getString("rating");
        		
        		// Display Values
        		
        		System.out.println("Name: " + t1);
        		System.out.println("Year: " + t2);
        		System.out.println("Rating: " + t3);
        		

            }
        	results.close();
        	
		} catch (SQLException se) {
			// Handle errors for JDBC
			se.printStackTrace();
		} catch (Exception e) {
			// Handle errors for Class.forName
			e.printStackTrace();
		}
	}
	
	
public void afterClass() {
	
		try {
			if (results != null)
				results.close();
			if (stmt != null)
				conn.close();
			if (conn != null)
				conn.close();
		} catch (SQLException se) {
			se.printStackTrace();
		}
	}

	
}
