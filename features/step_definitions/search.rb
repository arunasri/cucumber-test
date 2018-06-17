require 'selenium-webdriver'
Given("user of google search") do
  if ENV['BROWSER']
    brower = :firefox
  else
    browser = :chrome
  end
  driver = Selenium::WebDriver.for(browser)
  @page = SearchPage.new(driver)
  @page.visit("https://www.google.com/")
end

Then("I should get information about paxos bankchain") do
  assert_equal(@page.top_result_url, 'https://www.paxos.com/')
end

When("I search for paxos") do
  @page.search('paxos')
end

Then("I should see paxos website as top result") do
  assert(@page.top_result_url, 'https://www.paxos.com/')
end

Then("URL should contain paxos in query string") do
  refute_nil(@page.current_url.index(/paxos/) )
end

