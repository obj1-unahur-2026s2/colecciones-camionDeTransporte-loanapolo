object camion {
    const cosasCargadas = []
    method tara = 1000 
    method cargar(unaCosa){
        cosasCargadas.add(unaCosa)
    }
    method descargar(unaCosa) { 
        cosasCargar.remove(unaCosa) 
}
    method pesoDeLaCarga() = cosascargadas.sum({cosa -> cosa.peso()})

    method elPesoDeLasCosasSonPares() = cosasCargadas.all ({cosas -> cosa.peso().even()})

    method algunaCosaPesa(unPeso) = cosasCargadas.any({cosa -> cosa.peso() == unPeso})

    method primerCosaPeligrosa(nivelDePeligrosidad) = cosasCargadas.find({cosa -> cosa.nivelDePeligrosidad() = nivelDePeligrosidad})

    method tienePeligrosidadMasAltaDe(nivelDePeligrosidad) = cosasCargadas.filter({cosa -> cosa.nivelDePeligrosidad() > nivelDePeligrosidad()})

    method esMasPeligrosoQueUnaCosa(unaCosa) = cosasCargadas.filter({cosa -> cosa.nivelDePeligrosidad()})

    method estaExcedido() = self.peso > 2500 

    method ningunObjetoEsMasPeligrosoDe(nivelPeligrosidad) = cosasCargadas.all({cosa => cosa.nivelPeligrosidad() < nivelPeligrosidad})

    method puedeCircularEnRuta(nivelPeligrosidad) {
        return not(self.estaExcedido()) && self.ningunObjetoEsMasPeligrosoDe(nivelPeligrosidad)
    }

    method cosaMasPesada() = cosasCargadas.max({cosa => cosa.peso()}) 
    method algunaCosaPesaEntre(minimo, maximo) = cosasCargadas.any({cosa => cosa.peso().between(minimo, maximo)})

    method peso() = self.tara() + self.pesoDeLaCarga()
}
