import categorias.*
import bonos.*

object pepe {
	var categoria = gerente
	var bonoPresentismo = bonoNulo
	var bonoResultado = bonoNulo
	var cantidadDeFaltas = 0
	
	method cantidadDeFaltas() { return cantidadDeFaltas }

	method cambioDeCategoria (nuevaCategoria){
		categoria = nuevaCategoria
	} 
	
	method cambioDeBonoPorPresentismo (nuevoBono){
		bonoPresentismo = nuevoBono
	}

	method cambioDeBonoPorResultado(nuevoBono){
		bonoResultado = nuevoBono
	} 

	method cambiarFaltas(cantidad) {
		cantidadDeFaltas = cantidad
	}
	// faltan los métodos para poder cambiar la categoria, el bono por presentismo,
	// el bono por resultados y la cantidad de faltas de Pepe. 
	
	method sueldoNeto() { return categoria.neto() }
	method sueldo() {
		return self.sueldoNeto() + bonoPresentismo.monto(self) + bonoResultado.monto(self)
			/* + el bono por presentismo */
			/* + el bono por resultado */
		
		/* notar que todos los bonos entienden el mensaje monto(empleado)
		 * en este caso ¿quién es el empleado?
		 */ 
	}
	
}
