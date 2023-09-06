package selenium;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class selenium {

	public static void main(String[] args) {
		System.out.println("Atman Shastri, 182");
		System.setProperty("webdriver.chrome.driver","F:/182/stqa_182_sem_iii/chromedriver.exe"); // 1 Line
		
		WebDriver wd = new ChromeDriver(); // 2 Line

		wd.get("https://www.amazon.com/"); // 3 Line
		var navs = wd.findElements(By.className("nav-a"));
		for(int i=0;i<navs.size();i++) {
			var name = navs.get(i).getText().trim().toLowerCase();
			if(name=="today\'s deals") {
			navs.get(i).click();
			}
		}
	}
}