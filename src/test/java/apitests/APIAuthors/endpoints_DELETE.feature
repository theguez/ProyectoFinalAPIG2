Feature: Test del método DELETE para Authors

  Scenario: Verificar que se puede eliminar un autor existente
    Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
    And path 'Authors', '2020'
    When method DELETE
    Then status 200

    # Verificar que ya no existe
    Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
    And path 'Authors', '2020'
    When method GET
    Then status 404


    #BY ANGELA BELEN RODRIGUEZ SOLIZ