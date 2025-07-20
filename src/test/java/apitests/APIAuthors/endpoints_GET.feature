@authors
Feature: Test de tipo GET para Authors

  Scenario: Verificar que se puede obtener la lista de autores
    Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
    And path 'Authors'
    When method GET
    Then status 200

    #BY ANGELA BELEN RODRIGUEZ SOLIZ