Feature: test de tipo DELETE

  Scenario: Verificar que se puede eliminar un vehiculo
    Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
    And path 'Books', '3'
    When method DELETE
    Then status 200
