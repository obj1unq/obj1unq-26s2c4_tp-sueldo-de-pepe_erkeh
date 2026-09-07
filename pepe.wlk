
//Hola Mundo
object pepe{
    var rol = cadete
    var resultado = porcentaje
    var presentismo = presentismoNormal
    var faltasAcumuladas = 0

    method sueldo(){
        return rol.sueldoNeto() + self.bonoPorResultado() + self.bonoPorPresentismo()
    }

    method cambioDeRol(nuevoRol){
        rol = nuevoRol
    }

    method bonoPorResultado(){
        if(resultado == porcentaje){
            return resultado.bonoPorPorcentaje(rol.sueldoNeto())
        } else {
            return resultado.bonoResultados()
        }
    }

    method cambiarTipoResultado(nuevoResultado){
        resultado = nuevoResultado
    }
    
    method bonoPorPresentismo() {
        return presentismo.calcular(self)
    }

    method cambiarPresentismo(nuevoPresentismo) {
        presentismo = nuevoPresentismo
    }

    method faltas(){
        return faltasAcumuladas
    }

    method sueldoNetoActual(){
        return rol.sueldoNeto()
    }

    method faltasRegistradas(faltasObtenidas){
        faltasAcumuladas = faltasObtenidas
    }
}

object cadete{
    method sueldoNeto(){
        return 20000
    }
}

object gerente{
    method sueldoNeto(){
        return 15000
    }
}

object porcentaje{
    method bonoPorPorcentaje(sueldo){
        return sueldo * 0.1
    }
}

object fijo{
    method bonoResultados(){
        return 800
    }
}

object nulo{
    method bonoResultados(){
        return 0
    }
}

object presentismoNormal{
    method calcular(empleado){
        if (empleado.faltas() == 0){
            return 2000
        } else if (empleado.faltas() == 1) {
            return 1000
        } else {
            return 0
        }
    }
}

object presentismoAjuste{
    method calcular(empleado){
        if (empleado.faltas() == 0){
            return 100
        } else {
            return 0
        }
    }
}

object presentismoDemagogico {
  method calcular(empleado){
    if (empleado.sueldoNetoActual() < 18000) {
        return 500
    } else {
        return 300
        }
    }
}

object presentismoNulo{
    method calcular(empleado){
        return 0
    }
}