import categorias.*
import bonos.*

object sofia {
	var categoria = gerente
	var bonoResultado = bonoNulo
	
	method cambioDeCategoria (nuevaCategoria){
		categoria = nuevaCategoria
	} 

	method cambioDeBonoPorResultado(nuevoBono){
		bonoResultado = nuevoBono
	} 

    method sueldoNeto() { return categoria.neto() * 1.3 }

    method sueldo(){
        return self.sueldoNeto() + bonoResultado.monto(self)
    }

}

	
