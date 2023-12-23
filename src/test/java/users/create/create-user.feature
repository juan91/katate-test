Feature: save user

  Scenario: save user correctly
    Given url "https://reqres.in/api/users"
    And request { "name": "morpheus","job": "leader" }
    When method Post
    Then status 201