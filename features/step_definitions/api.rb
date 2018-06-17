require 'httparty'
require 'json'
When("api user search itbit {string} ticker") do |target|
    result = HTTParty.get("https://api.itbit.com/v1/markets/#{target}/ticker")
    @response =  JSON.parse result.body
end

Then("response json should contain {string} as {string}") do |value, key|
    assert_equal(@response[key],value)
end