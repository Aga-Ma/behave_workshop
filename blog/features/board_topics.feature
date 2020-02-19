Feature: The user can create a new discussion topic in a board

  Scenario: Logged in user can create a new topic in a board
    Given I'm on a landing page
    When I choose an interesting board
    And I click New Topic button
    And Fill out the topic title and message
    Then New topic is created under the board

  Scenario: Not authenticated user cannot create a new topic in a board
    Given I'm on a landing page
    When I choose an interesting board
    Then New Topic button is not accessible for me

  Scenario: Not authenticated user can view topics list in a board
    Given I'm on a landing page
    When I choose an interesting board
    Then I can see a board related topics list