Feature: get users

  Scenario: get a user
    Given url "https://reqres.in/api/users/2"
    When method get
    Then status 200
    And match $ == '#notnull'
    And match $.data == {id: '#number',email: '#regex ^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$',first_name: '#ignore',last_name:'Weaver',avatar: '#string'}

  Scenario: user not found
    Given url "https://reqres.in/api/users/23"
    When method get
    Then status 404

