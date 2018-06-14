Feature: searching for Paxos via google search

Scenario: Search should contain paxos as top result
  Given user of google search
  When I search for paxos
  Then I should see paxos website as top result

Scenario: Search should contain search term in url
  Given user of google search
  When I search for paxos
  Then URL should contain paxos in query string