Feature: Golfers
 
  Scenario: add a new golfer
  
    Given I am on the golfers page
    And I click the "Add a Golfer" button
    And I fill in the text field "golfer_first_name" with "Joe"
    And I fill in the text field "golfer_last_name" with "Smith"
    And I select "Cazenovia Central High School" from "golfer_team_id"
    And I click the "Add Golfer" button
    