object cuentaCorriente {
	var saldo = 3000
	method depositar(importe) {saldo += importe}
	method extraer(importe) {saldo -= importe}
	method saldo() = return saldo
}

object cuentaConGastos {
	var saldo = 200000
	method depositar(importe) {saldo += importe - 20}
	method extraer(importe) {
		if(importe<=1000){
			saldo -= importe + 20
		}else{
			saldo -= importe + importe*0.02
		}
		
	}
	method saldo() = return saldo
}

object cuentaCombinada {
	const cuentaPrimaria = cuentaCorriente
	const cuentaSecundaria = cuentaConGastos
	method depositar(importe) = cuentaPrimaria.depositar(importe)
	method extraer(importe){
		if(importe<=cuentaPrimaria.saldo()){
			cuentaPrimaria.extraer(importe)
		}else{
			cuentaSecundaria.extraer(importe)
		}
	}
	method saldo() = return cuentaPrimaria.saldo() + cuentaSecundaria.saldo()
}
