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

Scenario: POST register a user with incomplete email (Negative case)
  Given path 'register'
  And request { email: '' }
  When method post
  Then status 400

Scenario: PUT update a user
  Given path 'users/2'
  And request { name: 'Jane Doe', job: 'Leader' }
  When method put
  Then status 200
  And match $.name == 'Jane Doe'
