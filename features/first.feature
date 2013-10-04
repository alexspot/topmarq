Feature: Search
  In order to get info about cars
  As a user
  I want to search them by parameters

  Scenario: Search cars by made and model
    Given Home page
    When I enter postcode BS324NF
    And I specify made to BMW and mark to M6
    And I click submit button on Main page
    Then Results should contain cars with BMW made and model M6
