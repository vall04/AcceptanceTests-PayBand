Feature:US13 -  Notificación automática de cobro

  Como pasajero
  Quiero recibir una notificación al finalizar mi viaje
  Para conocer el monto cobrado y tener control de mis gastos

  Scenario1: Envío exitoso de notificación
    Given que el pasajero finaliza su viaje con cobro automático
    When se procesa el pago
    Then el sistema envía una notificación con el monto y destino

  Scenario2: Notificación no enviada por conexión
    Given que el pasajero finaliza su viaje
    And hay problemas de red
    When se intenta enviar la notificación
    Then el sistema guarda el comprobante para enviar más tarde
    