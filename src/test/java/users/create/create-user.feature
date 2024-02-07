Feature: Save user

  Scenario:  save user correctly
    Given url "https://reqres.in/api/users"
    And request {name:"juan", job: "developer"}
    When method Post
    Then status 201
    And match response contains {id:'#string'}