Feature: The user can be authenticated to the application

  Scenario: User can Sign-In into the application
    Given I'm on the Sign-in page
    When I fill the form with my authentication credentials
    And I click the Create an account button
    Then the system signs me in

  Scenario: User can Log-In into the application
    Given I'm on the Log-in page
    When I fill the form with my authentication credentials
    And I click the Log In button
    Then the system logs me in
