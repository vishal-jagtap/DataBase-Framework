package Test1;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;


public class TC_001 {
	
	WebDriver driver;
    // locator Menu tab
	By Menu_Tab = By.xpath("//li[@class='js_nav_item']//a");
	
	// locator sub menu option
	By Sub_Menu = By.linkText("Top Rated Movies");
	
	public void Test1(WebDriver driver)throws IOException
	{
		driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
		System.out.println("pass");
		WebElement mainElement= driver.findElement(Menu_Tab);
		WebElement subElement= driver.findElement(Sub_Menu);
		
		Actions act= new Actions(driver);
		
		act.moveToElement(mainElement).moveToElement(subElement).click().build().perform();
		
		
		
	}


}
