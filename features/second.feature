Feature: Search
  In order to get info about cars
  As a user
  I want to search them by parameters

  Scenario: Search cars by minimum and maximum price
    Given Home page
    When I enter postcode BS324NF
    And I specify minimum price to 0 and maximum price to 500
    And I click submit button on Main page
    Then Results should contain cars with range of prices from 0 to 500
