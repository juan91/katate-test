@Ignore
Feature: post user

  # se definen variables las cuales se puede reutilizar en los escenarios
  Background:
    * url "https://reqres.in"
    * path "/api/users"
    * def req = {name: "#(name)", job: "#(job)"}
   # * request {name: "juan", job: "developer"}

  Scenario: save user
    Given request {name: "juan", job: "developer"}
    When method post
    Then status 201

  Scenario Outline: save user outline # este tipo de escenario pemite ejecutarse mas de una vez, cambiando los datos con la tabla examples
    When method post
    Then status 201

    Examples:
    | name  | job      |
    | pedro | teacher  |
    | maria | leder    |

  Scenario: save user without job
    Given url "https://reqres.in/api"+"/user/"
    And request {name: "juan", job: "developer"}
    When method post
    Then status 201
    And match $.name == 'juan'