Feature: Test de tipo POST para Authors

  Scenario Outline: Verificar que se puede crear un autor con datos válidos
    Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
    And path 'Authors'
    * def randomNumber = read('classpath:utils/generateRandomNumber.js')
    * def id = randomNumber(1000, 9999)
    * def payload =
      """
      {
        "id": #(id),
        "idBook": 1,
        "firstName": "John",
        "lastName": "Doe"
      }
      """
    And request payload
    When method POST
    Then status 200

  Examples:
    | TipoAutor |
    | Autor1     |
    | Autor2     |

    #BY ANGELA BELEN RODRIGUEZ SOLIZ