Feature: Manage Photographs
  In order to manage photograph portfolio
  As an administrator
  I want to perform operations to my photos
  
  Scenario: Import photos
    Given I have no photographs
    When I am on import photographs as r3dp0rt
    Then I should have photographs
