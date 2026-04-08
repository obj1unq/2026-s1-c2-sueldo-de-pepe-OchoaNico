
object gerente {
	method neto() { return 15000 } 
}

object cadete {
	method neto() {
	  return 20000
	}
}

object vendedor {
	var hayAumentoPorVentas = false
	const netoVendedor = 16000

	method neto(){
		if (hayAumentoPorVentas){
			return netoVendedor * 1.25
		} else {
			return netoVendedor
		}
	}

	method activarAumentoPorMuchasVentas() {
	  hayAumentoPorVentas = true
	}

	method desactivarAumentoPorMuchasVentas() {
	  hayAumentoPorVentas = false
	}
}

object medioTiempo{
	var categoriaBase = null

	method categoriaBase(categoria){
		categoriaBase = categoria
	}

	method categoriaBase() {
	  return categoriaBase
	}

	method neto(){
		return self.categoriaBase().neto() / 2
	}
}
