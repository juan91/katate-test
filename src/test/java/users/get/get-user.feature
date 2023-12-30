Feature: get users on reqres

  Background:
    Given url "https://reqres.in/"
    And headers {'token': 'JAS78', 'Accept': 'application/json', 'issuer-id': '123456' }

  Scenario: get a user
    Given path "api/users/2"
    When method get
    Then status 200
    And match response == '#notnull'
    And match response.data == {"id": '#number',"email": '#regex ^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$',"first_name": '#ignore',"last_name": "Weaver","avatar": "#string"}

  Scenario: user not found
    Given path "api/users/23"
    When method get
    Then status 404

