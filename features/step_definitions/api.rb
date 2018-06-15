require 'httparty'
require 'json'
json_result = nil
When("api user search itbit {string} ticker") do |target|
  response = HTTParty.get("https://api.itbit.com/v1/markets/#{target}/ticker")
  json_result = JSON.parse response.body
end

Then("response json should contain {string} as {string}") do |value, key|
  assert(json_result[key] == value, "expected #{key} to have #{value}")
end