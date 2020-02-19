Feature: The user cannot be signed in to the application with invalid data given

  Scenario: User account with existing username cannot be created
      Given I'm on the Sign-in page
      When I fill the form with already existing username
      And fill out the rest of sign-in required fields
      Then I'll get the information that the username already exists

  Scenario: User cannot create an account with less characters than 8
    Given I'm on the Sign-in page
    When I fill the form with username and email
    And provide 1 to 7 characters password
    Then I get the information that my password is too short