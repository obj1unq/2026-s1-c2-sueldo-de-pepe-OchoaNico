import categorias.*
import bonos.*

object ernesto {
    var compañero = null
    var bonoPresentismo = bonoNulo
    const cantidadDeFaltas = 0

    method cantidadDeFaltas() { return cantidadDeFaltas }

    method cambioDeBonoPorPresentismo (nuevoBono){
		bonoPresentismo = nuevoBono
	}

    method asignarCompañero(empleado) {
        compañero = empleado
    }

    method sueldoNeto() {
        return compañero.sueldoNeto()
    }

    method sueldo(){
        return self.sueldoNeto() + bonoPresentismo.monto(self)
    }
}