Feature Home page

  Scenario: Go to the Teams Page
    Given I am on the home page
    And I click the "Teams" link
    Then I should see the text "Cazenovia Central High School"
  
  Scenario: Go to the Golfers Page
    Given I am on the home page
    And I click the "Golfers" link
    Then I should see the text "Rich Downie"
    