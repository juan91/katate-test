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

  Scenario: Example deep
    * def original = { a: 1, arr: [ { i: [5,6,7] }, { b: 2, c: 3, z: [1,2,4] }, { b: 3, c: 4 } ] }
    * def expected = { a: 1, arr: [ { b: 2 }, { c: 4 } ] }
    * match original contains deep expected

