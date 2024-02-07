Feature: save many users

  Background:
    Given url "https://reqres.in/api/users"
    And headers {'token': 'MITOKEN12345', 'Accept': 'application/json', 'issuer-id': '123456' }
    * def name = "ana"

  Scenario: save user correctly ana
    Given request { name: "#(name)", job: "leader" }
    When method Post
    Then status 201
    And match $ contains {name: "#(name)"}

  Scenario: save user correctly maria
    Given request { name: "maria", job: "developer" }
    When method Post
    Then status 201
    And match $ contains {name:"morpheus"}
    * print name

  Scenario: save user correctly carlos
    Given request { name: "carlos", job: "leader" }
    When method Post
    Then status 201
    And match $ contains {name:"morpheus"}


