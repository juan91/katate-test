Feature: Reusable scenarios for post a user

  @Create
  Scenario: save user correctly
    Given url "https://reqres.in/api/users"
    And request { "name": "maria","job": "leader" }
    When method Post
    Then status 200
    And def userId = $.id
