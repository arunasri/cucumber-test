package com.paxos.pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

public class BasePageObject {
	public final WebDriver driver;

	public boolean queryStringContains(String target) {
		return this.driver.getCurrentUrl().contains(target);
	}

	public BasePageObject(WebDriver driver) {
		this.driver = driver;
		this.driver.manage().window().maximize();

		PageFactory.initElements(this.driver, this);
	}

}
