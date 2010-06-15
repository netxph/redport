Feature: Manage Articles
  In order to create a feedback section
  As a visitor
  I want to create feedback
  
  Scenario: Create Feedback
    Given I have no feedbacks
    When I am on new feedback
    And I fill in "Email" with "someone@somewhere.com"
    And I fill in "Content" with "Great site!"
    And I press "Create"
    Then I should have 1 feedback