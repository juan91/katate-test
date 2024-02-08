Feature: Delete user

  Scenario: Delete user correctly
    Given url urlBase + "/api/users/" + "2"
    When method delete
    Then status 204
