site = Site.new(Selenium::WebDriver.for(:firefox))
Given("user of google search") do
  site.open
end

Then("I should get information about paxos bankchain") do
  assert(site.top_result_url == 'https://www.paxos.com/')
end
When("I search for paxos") do
  site.search('paxos')
end

Then("I should see paxos website as top result") do
  assert(site.top_result_url == 'https://www.paxos.com/')
end

Then("URL should contain paxos in query string") do
  assert(site.current_url.index(/paxos/) != nil)
end