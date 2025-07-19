
Feature: Test del PUT

    Feature Description del test metodo PUT
    Scenario: Verificar que se puede actualizar un Book
        Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
        And path 'Books', '2'
        * def randomNumber = read('classpath:utils/generateRandomNumber.js')
        * def numPaginas = randomNumber(100,500)
        * def excerpt = call read('classpath:utils/generateRandomText.js'){ baseText: 'Book', length:4}
        * def payload =
            """
            {
                "id": 50,
                "title": "Test API",
                "description": "Diplomado Testing Funcional Software",
                "pageCount": "#(numPaginas)",
                "excerpt": "#(excerpt)",
                "publishDate": "2025-07-18T01:40:46.657Z"
            }
            """
        And request payload
        When method PUT
        Then status 200
        And match response ==
            """
            {
                "id": "#number",
                "title": "#string",
                "description": "#string",
                "pageCount": "#number",
                "excerpt": "#string",
                "publishDate": "#string"
            }
            """
        And assert response.title == "Test API"
        And match response.id == 50