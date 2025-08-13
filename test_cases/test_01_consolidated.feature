Feature: Test 01 - Automated Test Suite
  As a test automation engineer
  I want to run all test scenarios in sequence
  So that I can verify the complete functionality

  Step_01_Click on Button Email Support
    Given I am on the Test 01 page
    When I click_element on the button
    Then the button should respond appropriately

  Step_01_Click on Button "Email Support"
    Given I am on the Test 01 page
    When I click_element on the button
    Then the button should respond appropriately

  Step_01_Login with valid credentials
    Given I am on the Test 01 page
    When I single on the button
    Then the button should respond appropriately

  Step_01_Navigate to dashboard
    Given I am on the Test 01 page
    When I perform navigate_to
    Then the action should complete successfully

  Step_01_Enter username in login field
    Given I am on the Test 01 page
    When I enter "test text" in the element
    Then the element should contain "test text"

  Step_01_Verify user profile data
    Given I am on the Test 01 page
    When I check the element
    Then it should display "expected text"

  Step_01_Navigate to OrangeHRM Login Page and click Login Button
    Given I am on the Test 01 page
    When I single on the login_button
    Then the login_button should respond appropriately

  Step_01_Step_01_Navigate to OrangeHRM Login Page and click Login B
    Given I am on the "/login" page
    When I single on the login_button
    Then the login_button should respond appropriately

  Step_01_Step_01_Should navigate to contact page
    Given I am on the "https://dimuthchathu101.github.io/BitAndBuild/" page
    When I single on the contact_link
    Then the contact_link should respond appropriately

  Step_02_Step_02_Enter username in login field
    Given I am on the "/login" page
    When I enter "test text" in the element
    Then the element should contain "test text"

  Step_02_Step_02_Navigates to linked page
    Given I am on the "https://dimuthchathu101.github.io/BitAndBuild/" page
    When I single on the navigation_link
    Then the navigation_link should respond appropriately

  Step_03_Step_03_Verify user profile data
    Given I am on the "/login" page
    When I check the element
    Then it should display "expected text"

  Step_03_Step_03_Navigates to linked page
    Given I am on the "https://dimuthchathu101.github.io/BitAndBuild/" page
    When I single on the navigation_link
    Then the navigation_link should respond appropriately

  Step_04_Step_04_Verify user profile data
    Given I am on the "/login" page
    When I check the element
    Then it should display "expected text"

  Step_04_Step_04_Navigates to linked page
    Given I am on the "https://dimuthchathu101.github.io/BitAndBuild/" page
    When I single on the navigation_link
    Then the navigation_link should respond appropriately

  Step_05_Step_05_Successfully detect website type
    Given I am on the "https://dimuthchathu101.github.io/BitAndBuild/" page
    When I check the element
    Then it should display "expected text"

  Step_06_Step_06_Successfully detect visual elements
    Given I am on the "https://dimuthchathu101.github.io/BitAndBuild/" page
    When I check the element
    Then it should display "expected text"

