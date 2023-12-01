Feature: Reqres API Test

Background: 
  * url 'https://reqres.in/api/'

Scenario: GET list of users
  Given path 'users?page=2'
  When method get
  Then status 200
  And match each $.data contains { id: '#number' }

Scenario: GET user with non-existing id (Negative case)
  Given path 'users/23'
  When method get
  Then status 404

Scenario: POST create a user
  Given path 'users'
  And request { name: 'John Doe', job: 'Developer' }
  When method post
  Then status 201
  And match $.name == 'John Doe'
