object mensajeria {
	var conjunto = #{}
	
	method mensajeros() = conjunto
	method contratar(alguien) {
		conjunto.add(alguien)
 	}
 	method despedir(alguien) {
		conjunto.remove(alguien)
 	}
 	method despidoMasivo(){
 		conjunto.clear()
 	}
 	method esGrande() = conjunto.size()>2
 	//  FALTA HACER method primerMensajeroPuedeEntregar() = true
 	//  FALTA HACER method pesoUltimoMensajero() = 90
}

object paquete {
	var property destino = "puenteDeBrooklyn"
	var property pago = true
}

object puenteDeBrooklyn {
	method dejaPasar(mensajero){
		return mensajero.peso()<1000		
	}
}

object laMatrix {
	method dejaPasar(mensajero){
		return mensajero.puedeLlamar()
	}
}

object roberto {
	var property transporte = "camion"

	method peso() = 90 + transporte.pesoTransporte()
	method puedeLlamar() = false
	method puedeEntregar() {
		return paquete.destino().dejaPasar(self) and paquete.pago()
	}
}

object chuckNorris {
	method peso() = 900
	method puedeLlamar() = true
	method puedeEntregar() {
		return paquete.destino().dejaPasar(self) and paquete.pago()
	}
}

object neo {
	var property tieneCredito = true
	method peso() = 0
	method puedeLlamar() = true
	method puedeEntregar() {
		return paquete.destino().dejaPasar(self) and paquete.pago()
	}
}

object bicicleta {
	method pesoTransporte() = 8
}

object camion {
	var property cantidad = 1

	method pesoTransporte() = cantidad*500
}