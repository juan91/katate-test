Feature: save user

  #Background:
  #  * url "https://reqres.in"
  #  * path "/api/users"
  #  * request { "name": "morpheus","job": "leader" }

  Scenario: save user correctly
    Given url "https://reqres.in/api/users"
    And request { "name": "morpheus","job": "leader" }
    When method Post
    Then status 201

  Scenario: save user without job
    Given url "https://reqres.in/api/users"
    And request { "name": "morpheus","job": "leader" }
    When method Post
    Then status 400

  Scenario: save user with name invalid
    Given url "https://reqres.in/api/users"
    And request { "name": "#54344//","job": "leader" }
    When method Post
    Then status 400