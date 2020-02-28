Feature: The user can book available flights

  Scenario: the user can book flight
    Given the user is on search page
    When user selects "Paris" as departure city
    And user selects "London" as destination city
    And clicks on Find Flights button
    And clicks on Choose This Flight button
    And fill the form to purchase the flight
    Then purchase is successful