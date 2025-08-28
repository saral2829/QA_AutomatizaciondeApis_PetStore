Feature: PetStore

  @Test
    Scenario Outline: Crear una nueva orden en PetStore
    Given preparo una orden con orderId <idOrder> y petId <idPet>
      When ejecuto la creación de la orden
      Then la respuesta debe tener el código de estado <statusCode>
      And el response debe mostrar el mismo orderId <idOrder> y petId <idPet>

      Examples:
        | idOrder | idPet | statusCode |
        | 1       | 1     | 200        |
        | 20      | 10    | 200        |
        | 101     | 103   | 200        |

  @Test
  Scenario Outline: Consultamos una orden por el ID de la orden
    Given que existe o no , la orden con ID <idOrder>
    When consulto la orden por su ID
    Then el código de respuesta debe ser <statusCode>
    And si existe, el response debe mostrar el mismo orderId <idOrder>

    Examples:
      | idOrder | statusCode |
      | 1       | 200        |
      | 2       | 200        |
      | 1031    | 404        |
      | 4       | 200        |
