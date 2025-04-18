object luke {
  var cantidadDeLugares = 0
  var ultimoRecuerdo = null
  
  method viajar(vehiculo, lugar) {
    if (lugar.puedeViajar(vehiculo)) {
        ultimoRecuerdo = lugar.recuerdo()
        cantidadDeLugares =+ 1
        vehiculo.iniciarViaje()
    }
  }
}

object elAlambiqueVeloz {
    var combustible = 1000

    method esRapido() = true
    method iniciarViaje() {
        combustible -= 100
    }
    method combustible() = combustible
}

object superChatarraEspecial {
    var peso = 8000

    method peso(pesoQuitado) {
        peso = peso - pesoQuitado
    }
    method esRapido() { peso < 5000}
    method iniciarViaje() {}

}

object superConvertible {
   var rapido = null 

   method convertirse(vehiculo) {
    rapido = vehiculo.esRapido()
    vehiculo.puedeViajar(vehiculo)
   }
}


object paris {
    method recuerdo() = "llavero torre eiffel"
    method puedeViajar(vehiculo) {
        return !(vehiculo == elAlambiqueVeloz && vehiculo.combustible())
    }
}

object buenosAires {
    var presidente = "Alberto"
    
    
    method recuerdo() { 
        if ( presidente != "Alberto" && presidente != "Mauricio") {
        return "mate con yerba"
    }
    else {
        return "mate sin yerba"
    }
    }
     method puedeViajar(vehiculo) {
        return vehiculo.esRapido()
    }

    method presidente(presidenteNuevo) {
        presidente = presidenteNuevo
    }
}

object bagdad {
    var property recuerdo = "petroleo crudo"

    method recuerdo(recuerdoActual) { 
       recuerdo = recuerdoActual
    }

    method puedeViajar(vehiculo) {
        return true
    }

}

object lasVegas {
    var lugar = buenosAires

    method lugar(lugarHomenajeado) {
        lugar = lugarHomenajeado 
    }
     
    method recuerdo() = lugar.recuerdo()
    method puedeViajar(vehiculo) {
        return (lugar.puedeViajar(vehiculo))
    }
}

object misiones {
    method recuerdo() = "una chipa"

    method puedeViajar(vehiculo) {
        return vehiculo.combustible() > 200 && !vehiculo.esRapido() 
    }
}

