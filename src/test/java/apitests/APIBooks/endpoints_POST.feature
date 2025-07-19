
Feature: test de tipo POST

    Feature Description Contenido del test POST

    Scenario Outline: Verificar que se puede crear un vehiculo de tipo: <TipoBook>
        Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
        And path 'Books'
        * def randomNumber = read('classpath:utils/generateRandomNumber.js')
        * def numPaginas = randomNumber(100,500)
        * def numID = randomNumber(10,20)
        * def excerpt = call read('classpath:utils/generateRandomText.js'){ baseText: 'Auto', length:4}
        * def payload =
            """
            {
                "id": "#(numID)",
                "title": "Test API",
                "description": "Diplomado Testing Funcional Software",
                "pageCount": "#(numPaginas)",
                "excerpt": "#(excerpt)",
                "publishDate": "2025-10-18T01:40:46.657Z"
            }S
            """
        And request payload
        When method POST
        Then status 200

    Examples:
        | TipoBook |
        | Fantasia  |
        | Terror |
        | Ciencia |




