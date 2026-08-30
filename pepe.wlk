
//Hola Mundo
object pepe {
    var rolActual = "cadete"
    var resultadoActual = "fijo"
    var presentismoActual = "normal"
    var faltasAcumuladas = 3


    method sueldo() {
        return self.sueldoNeto() + self.bonoPorResultados() + self.bonoPorPresentismo()
    }

    method empleadoRol() {
        return rolActual
    }
    
    method cambiarRol(nuevoRol) {
        rolActual = "nuevoRol"
    
    }
    method sueldoNeto() {
        if (self.empleadoRol() == "cadete") {
            return 20000
        } else (self.empleadoRol() == "gerente") {
            return 15000
        }
    }

    method bonoResultado() {
        return resultadoActual
    }

    method cambiarResultado(nuevoResultado) {
        resultadoActual = "nuevoResultado"
    }

    method bonoPorResultados() {
        if (self.bonoResultado() == "porcentaje") {
            return self.sueldoNeto() * 0.10
        } else if (self.bonoResultado() == "fijo") {
            return 800
        } else {
            return 0
        }
    }

    method bonoPresentismo() {
        return presentismoActual
    }

    method cambiarPresentismo(nuevoPresentismo) {
        presentismoActual = "nuevoPresentismo"
    }
    
    method bonoPorPresentismo() {
        if (self.bonoPresentismo() == "normal") {
            return self.presentismoNormal(self.faltas())
        } else if (self.bonoPresentismo() == "ajuste") {
            return self.presentismoAjuste(self.faltas())
        } else if (self.bonoPresentismo() == "demagogico"){
            return self.presentismoDemagogico()
        } else {
            return 0
        }
    }

    method faltasRegistradas(numeroDeFaltas) {
        faltasAcumuladas = numeroDeFaltas
        return faltasAcumuladas
    }

    method faltas() {
        return faltasAcumuladas
    }

    method presentismoNormal(faltas) {
        if (faltas == 0) {
            return 2000
        } else if (faltas == 1) {
            return 1000
        } else {
            return 0
        }
    }

    method presentismoAjuste(faltas) {
        if (faltas == 0) {
            return 100
        } else {
            return 0
        }
    }

    method presentismoDemagogico() {
        if (self.sueldoNeto() < 18000) {
            return 500
        } else {
            return 300
        }
    }
}

