Feature: get users - assertions

  Background:
    Given url "https://reqres.in/api/users?page=1"
    When method get
    Then status 200

  Scenario: get all users validate contains
    And match $ contains {"page":"#number"}

  Scenario: get all users - match array
    And match $.data == "#array"

  Scenario: get all users - extract a list of elements
    And match $.data[*].id == [1,2,3,4,5,6]

  Scenario: get all users - match each
    And match each $.data contains { id: '#number'}
    And match each $.data contains { id: '#? _ != 7' }

  Scenario: Example method
    * def isValidMonth = function(m) { return m >= 1 && m <= 12 }
    * def date = { month: 3 }
    * match date == { month: '#? isValidMonth(_)' }

