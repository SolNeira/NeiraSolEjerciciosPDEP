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