Feature: Form Interaction

  Scenario: Step_02_Enter username in login field
    Given I am on the "/login" page
    When I enter "test text" in the element
    Then the element should contain "test text"