@vehiculo
Feature: Contiene los tests que hacen llamado a los endpoints de tipo GET
         para vehiculos

Feature: test de tipo GET

  Scenario: Verificar que se puede obtener la lista de libros
    Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
    And path 'Books'
    When method GET
    Then status 200