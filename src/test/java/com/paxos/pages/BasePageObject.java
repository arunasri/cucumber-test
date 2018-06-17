package com.paxos.pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

public class BasePageObject {
	public final WebDriver driver;

	public boolean queryStringContains(String query) {
		return this.driver.getCurrentUrl().contains(query);
	}

	public BasePageObject(WebDriver driver) {
		this.driver = driver;
		this.driver.manage().window().maximize();

		PageFactory.initElements(this.driver, this);
	}

}
