Feature: Text Verification

  Scenario: Step_03_Verify user profile data
    Given I am on the "/login" page
    When I check the element
    Then it should display "expected text"