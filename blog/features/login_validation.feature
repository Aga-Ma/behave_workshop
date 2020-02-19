Feature: The user cannot be logged in to the application with invalid data given

  Scenario: User gets error information when tries to login with invalid credentials
    Given I'm on the Log-In page
    When I fill the form with invalid authentication credentials
    Then I gets the invalid credentials error message