Feature: searching for Paxos via google search

Scenario: Successful Login with Valid Credentials
  Given user of google search
  When I want to be able to get search results for Paxos Bankchain
  Then I should get information about paxos bankchain