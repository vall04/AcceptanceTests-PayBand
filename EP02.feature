Feature: US04 -  Vinculación de pulsera

  Como pasajero
  Quiero verificar que mi pulsera esté correctamente vinculada a mi cuenta para poder 
  usarla como método de pago en el bus

  Scenario1: Pulsera vinculada correctamente
    Given que el pasajero escanea su pulsera activa y válida
    When el sistema verifica la información
    Then se aprueba el acceso al bus y se inicia el viaje

  Scenario2: Pulsera sin saldo suficiente
    Given que la pulsera está vinculada pero sin saldo
    When el pasajero intenta usarla
    Then el sistema muestra el mensaje "Saldo insuficiente"

  Scenario3: Pulsera bloqueada
    Given que el pasajero usa una pulsera reportada como robada
    When el sistema la escanea
    Then se niega el acceso y se alerta al pasajero
    