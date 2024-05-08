object registroProduccion {
	const piezasProducidas = [43, 18, 49, 62, 33, 39]
	method algunDiaSeProdujo(cantidad) = piezasProducidas.contains(cantidad)
	method maximoValorDeProduccion() = piezasProducidas.max()
	method valoresDeProduccionPares() {
		return piezasProducidas.filter({pieza => pieza.even()})
	}	
	method produccionEsAcotada(n1,n2) = piezasProducidas.all({pieza => pieza.between(n1, n2)})
	method produccionesSuperioresA(cuanto) = piezasProducidas.filter({pieza => pieza > cuanto})
	method produccionesSumando(n) = piezasProducidas.map({pieza => pieza + n})
	method totalProducido() = piezasProducidas.sum()
	method ultimoValorDeProduccion() = piezasProducidas.last()
	method cantidadProduccionesMayorALaPrimera() = piezasProducidas.count({pieza => pieza > piezasProducidas.first()})
}
