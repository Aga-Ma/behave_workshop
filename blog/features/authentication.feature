Feature: The user can be authenticated to the application

  Scenario: User can Log-In into the application
    Given I'm on the Log-in page
    When I fill the form with my username "behavetest" and password "mkonji123"
    And I click the Log In button
    Then the system logs me in
