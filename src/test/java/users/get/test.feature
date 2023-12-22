Feature: Ejemplo de llamada a funciones desde archivo .js

  Scenario: Sumar y restar números
    * def funciones =  read('../utils/functions.js')
    * print funciones
    * def resultadoSuma = funciones(5, 3)
    #* def resultadoResta = funciones.restar(8, 2)

    * print 'Resultado suma:', resultadoSuma
    #* print 'Resultado resta:', resultadoResta