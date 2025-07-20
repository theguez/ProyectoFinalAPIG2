Feature: Test del método PUT para Authors

  Scenario: Verificar que se puede actualizar un autor existente
    Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
    And path 'Authors', '2'
    * def randomNumber = read('classpath:utils/generateRandomNumber.js')
    * def payload =
      """
      {
        "id": 2,
        "idBook": 1,
        "firstName": "Updated",
        "lastName": "Author"
      }
      """
    And request payload
    When method PUT
    Then status 200
    And match response ==
      """
      {
        "id": 2,
        "idBook": 1,
        "firstName": "Updated",
        "lastName": "Author"
      }
      """

      #BY ANGELA BELEN RODRIGUEZ SOLIZ
