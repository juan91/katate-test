Feature: Delete user

  Scenario: Delete user correctly
    * call read("../create/create-user-snippets.feature@Create")
    Given url "https://reqres.in/" + "api/users/" + userId
    When method delete
    Then status 204
