//
//  CalculadoraControlador.swift
//  Calculadora
//
//  Created by alumno on 5/11/19.
//  Copyright © 2019 ulpgc.romero.dayron. All rights reserved.
//

import Foundation
class CalculadoraControlador{
    var modelo:CalculadoraModelo
    var vista:CalculadoraVista
    init(modelo:CalculadoraModelo, vista:CalculadoraVista) {
        self.modelo=modelo
        self.vista=vista
    }
    
    func realizarOperacion(){
        print("Escriba un numero")
        var numero1 = vista.leerNumero()
        vista.escribirNumero(numero: numero1)
        print("Escriba un operador")
        var operador = vista.leerOperador()
        print("Escriba otro numero")
        var numero2 = vista.leerNumero()
        vista.escribirNumero(numero: numero2)
        
        switch operador {
        case "+":
            var suma = modelo.sumar(a: numero1, b: numero2)
            vista.escribirNumero(numero: suma)
            break
        case"-":
            var resta = modelo.restar(a: numero1, b: numero2)
            vista.escribirNumero(numero: resta)
            break
        case"*":
            var multiplicacion = modelo.multiplicar(a: numero1, b: numero2)
            vista.escribirNumero(numero: multiplicacion)
            break
        case"/":
            if(numero2 == 0){
                vista.escribirMensajeError(mensaje: "error: division por 0")
            }
            var division = modelo.dividir(a: numero1, b: numero2)
            vista.escribirNumero(numero: division)
            break
        default:
            break
        }
    }
}
