Feature: US22 -  Búsqueda de rutas disponibles

  Como pasajero
  Quiero ingresar mi origen y destino para conocer las rutas disponibles para mi viaje

  Scenario: Ruta encontrada correctamente
    Given que el pasajero ingresa un origen y destino válidos
    When presiona el botón "Buscar rutas"
    Then el sistema muestra al menos una ruta disponible

  Scenario: Campos incompletos
    Given que el pasajero solo ingresa el origen
    When presiona "Buscar rutas"
    Then el sistema muestra el mensaje "Ingresa origen y destino para continuar"

  Scenario: Ruta no encontrada
    Given que el pasajero ingresa una ruta fuera de cobertura
    When presiona "Buscar rutas"
    Then el sistema indica que no hay rutas disponibles