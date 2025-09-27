object huevoRepostero {
    method esDeChocolateBlanco() = true
    method esDeChocolateAmargo() = false
    method calorias() = 750
}

object huevoMixto {
    method esDeChocolateBlanco() = true
    method esDeChocolateAmargo() = false
    method calorias() = self.caloriasChocoBlanco() + self.caloriasChocoLeche()
    method caloriasChocoBlanco() = 500
    method caloriasChocoLeche() = 400    
}

object conejo {
    method esDeChocolateBlanco() = false
    method esDeChocolateAmargo() = true
    var property peso = 10
    method calorias() = peso * 10
}    
  
object blisterHuevitos {
    method esDeChocolateBlanco() = cantidadHuevitos >= 5
    method esDeChocolateAmargo() = false
    var property cantidadHuevitos = 5
    method calorias() = cantidadHuevitos * 100 + cantidadHuevitos.div(5) * 150
}

object matrioshka {
    method calorias() = 3000 + huevoDentro.calorias() + decoracion.calorias()
    var property decoracion = flor
    var property huevoDentro = huevoMixto
    method esDeChocolateBlanco() = huevoDentro.esDeChocolateBlanco()
    method esDeChocolateAmargo() = true
}
object arbol {
    method calorias() = 150
}

object flor {
    var property petalos = 4
    method calorias() = petalos * 100
}