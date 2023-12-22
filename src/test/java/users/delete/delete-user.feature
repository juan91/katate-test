@Ignore
Feature: delete user

  Scenario: delete user
    * call read("../post/user_post_snippets.feature@Create")
    Given url "https://reqres.in/api"+"/user/"+contactId
    When method delete
    Then status 204