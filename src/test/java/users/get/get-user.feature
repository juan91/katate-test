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
    And match each $.data contains { id: '#number', email: '#string'}
    And match each $.data contains { id: '#? _ != 600' }

  Scenario: Example 1
    * def date = { month: 3 }
    * def min = 1
    * def max = 12
    * match date == { month: '#? _ >= min && _ <= max' }

  Scenario: Example 2
    * def date = { month: 3 }
    * def isValidMonth = function(m) { return m >= 1 && m <= 12 }
    * match date == { month: '#? isValidMonth(_)' }

