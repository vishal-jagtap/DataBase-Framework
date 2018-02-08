package Test1;

import java.util.concurrent.TimeUnit;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;


public class TestBuild {
	
	WebDriver driver=null;
	
	public void setup(){
		
		System.setProperty("webdriver.chrome.driver", "E:\\Frame\\chromedriver.exe");
		driver=new ChromeDriver();
		driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
		driver.manage().window().maximize();
		driver.get("http://www.imdb.com/");
		System.out.println(".........geturl");
		
	}

}
