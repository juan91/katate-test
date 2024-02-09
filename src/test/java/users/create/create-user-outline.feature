Feature: save users outline

  Background:
    * url "https://reqres.in"
    * path "/api/users"
    * request { name: "#(name)", job: "#(job)" }

  Scenario Outline: save users correctly
    When method Post
    Then status 201
    And match $ == {name:"#string",job:"#notnull",id:#string,createdAt:"#ignore"}

    Examples:
      | name   | job       |
      | pepe   | leader    |
      | maria  | developer |
      | carlos | doctor    |

