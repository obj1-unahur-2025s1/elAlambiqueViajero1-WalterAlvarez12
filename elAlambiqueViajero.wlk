object paris {
    method recuerdo () = "llavero torre eiffel"
    method puedeViajar(vehiculo) {
        return !(vehiculo == alambique && vehiculo.combustible() < 1000)
    }
}

object buenosAires {
    var presidente = "alberto"

    method recuerdo () {
        if (presidente != "alberto" && presidente != "macri") {
            return "mate con yerba"
        }
        else {
            return "mate sin yerba"
        }
    }
    
    method presidente(presidenteNuevo) {
    	presidente = presidenteNuevo
    }
    
    method puedeViajar (vehiculo) {
        return vehiculo.esRapido()
    }
}

// settear antes el recuerdo o hacerlo const
object bagdad {
    var property recuerdo = "bidon con petroleo crudo"

    method recuerdo (recuerdoActual) {
        recuerdo = recuerdoActual
    }
    method puedeViajar (vehiculo) {
        return true
    }
}

object lasVegas {
    var lugar = buenosAires

    method lugar (lugarHomenajeado) {
        lugar = lugarHomenajeado
    }
    method recuerdo () = lugar.recuerdo()
    method puedeViajar (vehiculo) {
        return (lugar.puedeViajar(vehiculo))
    }
}

object mendoza {
    method recuerdo () = "botella de vino"
    method puedeViajar(vehiculo) {
        return vehiculo.combustible() > 200 && vehiculo.esRapido()
    }
}

object alambique {
    var combustible = 1000

    method esRapido() = true
	method iniciarViaje () {
        combustible -= 100
    }
    method combustible () = combustible
}

object superChatarraEspecial {
	var peso = 8000
	
	method peso (pesoQuitado){
		peso = peso - pesoQuitado
	}
	
    method esRapido() = peso < 5000
	method iniciarViaje (){}
}


object espatomovil {
	var color = "verde"
    
    method color (nuevoColor){
    	color = nuevoColor
    }
    method esRapido(){
    	return(color != "verde")
    }
    
    method iniciarViaje () {}
}

object luke {
    var cantidadLugares = 0
    var ultimoRecuerdo = null

    method viajar (lugar,vehiculo) {
        if (lugar.puedeViajar(vehiculo)) {
            ultimoRecuerdo = lugar.recuerdo()
            cantidadLugares += 1
            vehiculo.iniciarViaje()
        }
    }
    method cantidadLugares() = cantidadLugares
    method ultimoRecuerdo() = ultimoRecuerdo
}