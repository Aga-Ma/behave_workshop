Feature: The user can find available flights

  Scenario Outline: the user can find flights
    Given the user is on search page
    When user selects "<departure>" as departure city
    And user selects "<destination>" as destination city
    And clicks on Find Flights button
    Then flights are found

    Examples: flights
      | departure   | destination |
      | Mexico City | Rome        |
      | Portland    | Dublin      |
      | Boston      | Cairo       |