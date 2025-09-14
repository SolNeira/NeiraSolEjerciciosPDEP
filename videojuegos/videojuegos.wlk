/*
Queremos modelar cómo varía la diversión de delfina, una niña a la que le gusta jugar videojuegos.
Las consolas que tiene disponibles son:

Una play que otorga una jugabilidad de 10 unidades
Y una portatil que otorga una jugabilidad de 8, a menos que tenga la batería baja, en ese caso solamente 1 unidad

Queremos hacer que delfina juegue a un videojuego. Cuando esto sucede:

Primero delfina aumenta su nivel de diversión según cuánto otorgue el juego
Y luego hace uso de la consola

Cuando alguien usa la play no pasa nada, pero cuando la portatil se usa queda con batería baja.

delfina siempre comienza con un nivel de diversión de 0 y teniendo la play en la mano. Además tiene muchos videojuegos a su 
disposición, por ahora nos interesa modelar:

arkanoid: otorga una diversión de 50 unidades
mario: si la consola tiene la jugabilidad necesaria (mayor que 5) otorga una diversión de 100 unidades, caso contrario 15
pokemon: la diversión que otorga se calcula como 10 * la jugabilidad de la consola

Se pide:
Las consolas entiendan el mensaje jugabilidad() que indica cuánta jugabilidad otorga.
Las consolas entiendan el mensaje usar() que provoca que la consola reciba un uso.
delfina entienda el mensaje agarrar(consola) para cambiar la consola que tiene en la mano.
delfina entienda el mensaje jugar(videojuego).
delfina entienda el mensaje diversion() que indica su nivel de diversión.*/

object delfina {
  var property diversion = 0

  var tieneEnLaMano = play
 
  method agarrar(unaConsola) {
    tieneEnLaMano = unaConsola
  }

  method jugar(unVideojuego) {
    diversion += unVideojuego.otorga(tieneEnLaMano)
  }
}

object arkanoid {
  method otorga(consola){
    return 50
  }
}

object mario {
  method otorga(consola){
    if(consola.jugabilidad() > 5){
      return 100
    }else{
      return 15
    }
  }
}

object pokemon {
  method otorga(consola) {
    return 10 * consola.jugabilidad()
  }
  
}

object play {
  method jugabilidad() = 10

  method usar() {}
}

object portatil {
  var bateriaBaja = false  /*No se porque me marcaba que tenia que ser una const 
                            en vez de una var. Pero el error se fue cuandp hice
                            el method usar()*/ 
  
  //method bateriaBaja() = false ¿deberia ser un method?

  method jugabilidad() {
    if(bateriaBaja){
      return 1
    }else{
      return 8
    }
  }

  method usar() {
    bateriaBaja = true
  }
}
