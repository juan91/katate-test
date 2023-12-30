Feature: Save user

  Scenario:  save user correctly
    Given url "https://reqres.in/api/users"
    And request {name:"juan", job: "leader"}
    When method Post
    Then status 200