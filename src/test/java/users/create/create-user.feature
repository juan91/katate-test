Feature: save user

  Background:
    Given url "https://reqres.in/api/users"
    And headers {'token': 'JAS78', 'Accept': 'application/json', 'issuer-id': '123456' }
    * def miVar = "maria"

  Scenario: save user correctly
    Given request { name: "morpheus", job: "leader" }
    When method Post
    Then status 201
    * print miVar

  Scenario: save user correctly
    Given request { name: "maria", job: "asdf" }
    When method Post
    Then status 201
    * print miVar

  Scenario: save user correctly
    Given request { name: "carlos", job: "leader" }
    When method Post
    Then status 201
    * print miVar


