Feature Teams

  Scenario: add a new team
    Given I am on the teams page
    And I click the "Add Your Team" button
    And I fill in the text field "team_name" with "Fairport"
    And I fill in the text field "team_league" with "Central"
    And I fill in the text field "team_section" with "Three"
    And I fill in the text field "team_county" with "Monroe"
    And I fill in the text field "team_state" with "New York"
    And I fill in the text field "team_country" with "United States"
    And I click the "Add Team" button