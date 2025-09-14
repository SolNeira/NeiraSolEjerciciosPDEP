/*Tom y Jerry

Queremos modelar la épica batalla entre un valiente gato y un vil ratón:

Esta batalla se basa en infinitas persecuciones de tom intentando atrapar a jerry, pero jerry siempre logra 
escapar, ya sea por sus propios medios, ó a veces con ayuda de su robotRaton, a quien usa como señuelo.

En particular, nos interesa saber saber si tom es más veloz que un ratón, o sea, si su velocidad es mayor que 
la velocidad del ratón. Tener en cuenta que

la velocidad de tom se calcula como 5 + (su energía / 10).
la velocidad de jerry se calcula como 10 menos su peso.
la velocidad del robotRaton es siempre de 8 unidades.
tom tiene inicialmente 80 unidades de energía, y jerry, 3 unidades de peso.

Además, queremos hacer que tom corra a un ratón. Cuando tom corre un ratón:

consume tanta energía como 0.5 * su velocidad * distancia 
entre ambos, y su posición actual pasa a ser igual a la del ratón.
tom está inicialmente en la posición 0, jerry en la 10 y el 
robotRaton en la 12.

Declarar los objetos necesarios de forma que

Todos entiendan los mensajes velocidad() y posicion()
tom entienda el mensaje esMasVeloz pasándole algún ratón por
parámetro
tom entienda el mensaje correrA pasándole algún ratón por 
parámetro
*/

object tom {
  var energia = 80
  var property posicion = 0
  
  method velocidad() = 5 + (energia/10)

  method esMasVeloz(unRaton) {
    return self.velocidad() > unRaton.velocidad()
  }

  method distanciaCon(unAnimal) {
    return (posicion - unAnimal.posicion()).abs()
  }
  
  method correrA(unRaton){
    energia -= 0.5 * self.velocidad() * self.distanciaCon(unRaton) 
    posicion = unRaton.posicion()
  }
}

object jerry {
  var peso = 3
  var property posicion = 10

  method velocidad() = 10 - peso
}

object robotRaton {
  const property velocidad = 8
  var property posicion = 12

}