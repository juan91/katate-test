Feature: save user outline

  Background:
    * url "https://reqres.in"
    * path "/api/users"
    * request { "name": "#(name)","job": "#(job)" }

  Scenario Outline: save user correctly
    When method Post
    Then status 201
    And match response == {"name":"#string","job":"#notnull","id":"#string","createdAt":"#ignore"}

    Examples:
      | name   | job       |
      | juan   | leader    |
      | maria  | developer |
      | carlos | doctor    |

