import cosas.* 

object casaDePepeYJulian {
	const property cosas = []
	method comprar(cosa) = cosas.add(cosa)
	method cantidadDeCosasCompradas() = return cosas.size()
	method tieneComida() = return cosas.any{ c => c.esComida()}
	method vieneDeEquiparse(){
		const ultima = cosas.last()
		return ultima.esElectrodomestico() or ultima.precio() > 5000
	}
	method esDerrochona(){
		const importe = cosas.sum { c => c.precio() }
		return importe >= 9000
		// return cosas.sum { c => c.precio() } >= 9000
	}
	method compraMasCara(){
		return cosas.max { c=> c.precio() }
	}
	method electrodomesticosComprados(){
		return cosas.filter { c=> c.esElectrodomestico() }
	}
	method malaEpoca(){
		cosas.all{ c => c.esComida() }
	}
	method queFaltaComprar(lista){
		return lista.asSet().difference(cosas.asSet())
		//return lista.filter { c=> not cosas.contains(c) }
	}
	method faltaComida(){
		return cosas.count { c => c.esComida() } < 2
	}
	method gastar(importe) { }
	method dineroDisponible(){ }
}
