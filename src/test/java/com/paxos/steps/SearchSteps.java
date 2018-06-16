package com.paxos.steps;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import com.paxos.pages.SearchPageObject;

import cucumber.api.java.Before;
import cucumber.api.java.After;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;

public class SearchSteps {
	private SearchPageObject searchPageObject;
	private WebDriver driver;

	@Before
	public void setUp() {
		this.driver = new ChromeDriver();
		this.driver.get("https://google.com");
	}

	@After
	public void tearDown() {
		this.driver.close();
	}

	@Given("user of google search")
	public void user_of_google_search() {
		this.searchPageObject = new SearchPageObject(this.driver);
	}

	@When("I search for paxos")
	public void i_search_for_paxos() {
		this.searchPageObject.search("paxos");
	}

	@Then("I should see paxos website as top result")
	public void i_should_see_paxos_website_as_top_result() {
		Assert.assertEquals("https://www.paxos.com/", this.searchPageObject.topResultURL());
	}

	@Then("URL should contain paxos in query string")
	public void url_should_contain_paxos_in_query_string() {
		Assert.assertTrue(this.searchPageObject.queryStringContains("paxos"));
	}
}
