Feature: Manage Photographs
  In order to manage photograph portfolio
  As an administrator
  I want to perform operations to my photos
  
  Scenario: Import photos
    Given I have no photographs
    And I am on the login page
    And I fill in "password" with "r3dp0rt"
    And I press "Login"
    When I am on import photographs
    Then I should have photographs

  Scenario: Generate files
    Given I have no cached files
    And I am on the login page
    And I fill in "password" with "r3dp0rt"
    And I press "Login"
    When I am on refresh page
    Then I should have cached files
