Feature: Delete user

  Scenario: Delete user correctly
    Given url "https://reqres.in/" + "api/users/" + "2"
    When method delete
    Then status 204
