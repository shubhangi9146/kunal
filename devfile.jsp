thisc is dev file....







import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class JenkinsSeleniumTest {
    public static void main(String[] args) {
        // Set the path to the ChromeDriver executable
        System.setProperty("webdriver.chrome.driver", "path/to/chromedriver");

        // Create a new instance of the ChromeDriver
        WebDriver driver = new ChromeDriver();

        // Maximize the browser window
        driver.manage().window().maximize();

        // Navigate to the website to be tested
        driver.get("https://www.example.com");

        // Perform testing actions
        WebElement element = driver.findElement(By.linkText("Example Link"));
        element.click();

        // Wait for the page to load
        try {
            Thread.sleep(5000); // You can use explicit waits instead
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        // Verify expected results
        String expectedTitle = "Example Page Title";
        String actualTitle = driver.getTitle();
        if (actualTitle.equals(expectedTitle)) {
            System.out.println("Test Passed!");
        } else {
            System.out.println("Test Failed!");
        }

        // Close the browser
        driver.quit();
    }
}

