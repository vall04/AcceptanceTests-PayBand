Feature: US11 -  Bloqueo de pulsera desde la app

  Como pasajero
  Quiero poder bloquear mi PayBand en caso de pérdida o robo
  Para proteger mi saldo y evitar usos no autorizados

  Scenario: Bloqueo exitoso
    Given que el pasajero valida su identidad en la app
    When presiona el botón "Bloquear pulsera"
    Then el sistema desactiva la pulsera y confirma el bloqueo

  Scenario: Intento de bloqueo sin conexión
    Given que el pasajero intenta bloquear su pulsera
    And no tiene conexión a internet
    When presiona el botón "Bloquear pulsera"
    Then el sistema muestra un error de conexión