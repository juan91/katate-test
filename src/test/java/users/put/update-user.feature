Feature: save user

  Scenario: save user correctly
    Given url "https://reqres.in/api/users/2"
    And request { "name": "juan","job": "developer" }
    When method put
    Then status 200
    And match $.name == 'juan'