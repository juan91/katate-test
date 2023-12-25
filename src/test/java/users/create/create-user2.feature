Feature: save user 2

  Background:
    * url "https://reqres.in"
    * path "/api/users"
    * request { "name": "#(name)","job": "#(job)" }

  Scenario Outline: save user correctly
    When method Post
    Then status 201

    Examples:
      | name   | job       |
      | juan   | leader    |
      | maria  | developer |
      | carlos | doctor    |

