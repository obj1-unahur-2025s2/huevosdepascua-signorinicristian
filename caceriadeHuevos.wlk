import chicos.*
import huevosDePascua.*

object caceria {
    const participantes = [ana, jose, tito]
    const huevosEncontrados = []
    const huevosNoEncontrados = []
    method participantes() = participantes
    method huevosEncontrados() = huevosEncontrados
    method huevosNoEncontrados() = huevosNoEncontrados

    method inicializarJuego() {
        flor.petalos(7)
        matrioshka.decoracion(flor)
        blisterHuevitos.cantidadHuevitos(14)
        matrioshka.huevoDentro(blisterHuevitos)
        huevosNoEncontrados.addAll([matrioshka, huevoRepostero, conejo, huevoMixto])    
    }

    method cantidadPorEncontrar() = huevosNoEncontrados.size()

    method cuantosConChocoBlanco() = huevosNoEncontrados.count({h => h.esDeChocolateBlanco()})

    method aunNoFueEncontrado(huevo) = huevosNoEncontrados.contains(huevo)

    method encontrarUnHuevoPor(unChico, unHuevo) {
        unChico.comer(unHuevo)
        huevosNoEncontrados.remove(unHuevo)
        huevosEncontrados.add(unHuevo)
    }

    method encontrarHuevosRestantes(unChico) {
        huevosNoEncontrados.forEach({h => unChico.comer(h)})
    }

    method encontrarPrimerHuevoPor(unChico) {
        unChico.comer(huevosNoEncontrados.first())
        huevosNoEncontrados.remove(huevosNoEncontrados.first())
    }

    method chocoBlancoPorEncontrar() = huevosNoEncontrados.filter({h => h.esDeChocolateBlanco()})

    method huevoPorEncontrarConMasCalorias() = huevosNoEncontrados.max({h => h.calorias()})
}