Feature: testing google

  Scenario: visit google and check
    When a user visit google
    Then it should have a title "Google"

  @testtag
  Scenario: Lenghty google search
#    Given the google search page is open
    Given a user visit google
    When the user searches for the phrase:
    """
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed risus risus,
      bibendum vel neque id, cursus aliquam nisl. Proin ut sodales ligula.
      Vivamus ornare semper suscipit. Morbi porta consectetur felis, et porttitor tellus auctor non.
      Fusce in ligula at mauris lacinia rutrum. Sed vitae gravida libero.
    """
    Then one of the results contains "Wikipedia"



