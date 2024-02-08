Feature: Save user

  Scenario:  save user correctly
    Given url urlBase + "/api/users"
    And request {name:"juan", job: "leader"}
    When method Post
    Then status 201
    * print appId + " env: " + env