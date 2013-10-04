Feature: Search
  In order to get info about cars
  As a user
  I want to search them by parameters

  Scenario: Search only new cars
    Given Home page
    When I enter postcode BS324NF
    And I uncheck USED and NEARLY_NEW checkboxes
    And I click submit button on Main page
    Then Results should contain only new cars
