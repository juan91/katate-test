@ignore
Feature: Save user ignore

  Scenario:  save user correctly
    Given url "https://reqres.in/api/users"
    And request {name:"juan", job: "leader"}
    When method Post
    Then status 201