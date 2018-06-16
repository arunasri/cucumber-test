package com.paxos.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class SearchPageObject extends BasePageObject {

	public SearchPageObject(WebDriver driver) {
		super(driver);
	}

	@FindBy(how = How.NAME, using = "q")
	private WebElement q;

	@FindBy(how = How.NAME, using = "btnK")
	private WebElement submit;

	public void search(String text) {
		this.q.sendKeys(text);
		this.submit.click();
	}

	public String topResultURL() {
		return this.driver.findElement(By.cssSelector(".g a")).getAttribute("href");
	}

}
