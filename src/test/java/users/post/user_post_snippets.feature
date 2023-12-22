# para no ejecutar como una prueba, sino para ser llamada en otra prueba
@Ignore
Feature: reusable scenarios for post a user

  @Create
  Scenario:
    Given url "https://reqres.in/api/users"
    And request {name: "juan", job: "developer"}
    When method post
    Then status 201
    And def contactId = $.id