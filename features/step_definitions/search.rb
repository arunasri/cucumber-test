require 'byebug'
site = Site.new(Selenium::WebDriver.for(:firefox))
Given("user of google search") do
  site.open
end

When("I want to be able to get search results for Paxos Bankchain") do
  site.search('paxos')
end

Then("I should get information about paxos bankchain") do
  url = site.top_result
  assert(site.top_result_url == 'https://www.paxos.com/')
end