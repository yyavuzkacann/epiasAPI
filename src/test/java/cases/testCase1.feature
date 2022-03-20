Feature: Response kontrol

  Scenario Outline: Servisten dönen responsenin degerleri kontrol edilir
    Given url 'https://petstore.swagger.io/v2'
    And path 'pet'
    And path 'findByStatus'
    And param status = status
    When method GET
    Then status 200
    And match response.id == '#notnull'
    And match responseHeaders['Content-Type'] == [application/json]

    Examples:
      | status    |
      | available |
      | pending   |