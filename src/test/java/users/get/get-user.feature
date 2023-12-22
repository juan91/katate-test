Feature: get user on reqres

  Scenario: get a user
    * def DbUtils = Java.type('users.utils.DbUtils');
    * def db = new DbUtils()
    * db.testVar()
   # Given url "https://reqres.in/api"+"/user/2"
   # When method get
   # Then status 200


  #Scenario: get list of users
  #  * def jsonRes = read("../json/list_users.json")
  # Given url "https://reqres.in/api/user?page=1"
  #  When method get
  #  Then status 200
  #  And match $ == jsonRes