Feature Teams

  Scenario: add a new team
    Given I am on the teams page
    And I click the "Add Your Team" button
    And I fill in the text field "team_name" with "Miami"
    And I fill in the text field "team_county" with "Dade"
    And I select "Florida" from "team_state"
    And I click the "Add Team" button