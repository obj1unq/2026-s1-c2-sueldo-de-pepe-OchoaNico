import categorias.*
import bonos.*

object roque {
    var bonoResultado = bonoNulo

	method cambioDeBonoPorResultado(nuevoBono){
		bonoResultado = nuevoBono
	} 

    method sueldoNeto(){
        return 28000
    }

    method sueldo() {
      return self.sueldoNeto() + bonoResultado.monto(self) + 9000
    }


}