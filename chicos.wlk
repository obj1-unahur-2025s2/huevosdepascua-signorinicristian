import huevosDePascua.*

object ana {
    const huevosComidos = []

    method caloriasComidas() {
        return huevosComidos.map({h => h.calorias()}).sum()
    } 

    method hayHuevosDeChocolateBlanco() {
        return huevosComidos.any({h => h.esDeChocolateBlanco()})
    }
    
    method estaEnfermo() {
        return self.caloriasComidas() > 5000 && self.hayHuevosDeChocolateBlanco()
    }

    method aguante() = 5000

    method comer(huevo) {
        huevosComidos.add(huevo)
    }
}

object jose {
    var ultimoHuevoComido = huevoRepostero

    method comer(unHuevo) {
        ultimoHuevoComido = unHuevo
    }

    method estaEnfermo() {
        return ultimoHuevoComido.esDeChocolateAmargo()
    }
}

object tito {
    method comer(huevo) {/*No hace nada*/}

    method estaEnfermo() = false
}