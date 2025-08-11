Feature: Form Interaction

  Scenario: Enter username in login field
    Given I am on the Test 01 page
    When I enter "test text" in the element
    Then the element should contain "test text"