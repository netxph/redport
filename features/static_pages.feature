Feature: Static Pages
  In order to make a photo gallery
  As a publisher
  I want to have a site that contains common and static pages
  
  Scenario: Home
    Given I have pictures from gallery
    When I go to the homepage
    Then I should see some pictures
    
  Scenario: About 
    When I go to the about page
    Then I should see ".about redport"