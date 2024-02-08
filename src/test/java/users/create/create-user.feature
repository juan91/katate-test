Feature: Save user

  Scenario:  save user correctly
    * print appId + " env: " + env

    Given url urlBase + "/api/users"
    And request {name:"juan", job: "leader"}
    When method Post
    Then status 201