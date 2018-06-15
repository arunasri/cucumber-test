Feature: api itbit query
Scenario: Search should contain paxos as top result
  When api user search itbit "XBTUSD" ticker
  Then response json should contain "XBTUSD" as "pair"