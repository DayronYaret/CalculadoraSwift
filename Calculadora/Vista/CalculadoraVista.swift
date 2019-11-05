//
//  CalculadoraVista.swift
//  Calculadora
//
//  Created by alumno on 5/11/19.
//  Copyright © 2019 ulpgc.romero.dayron. All rights reserved.
//

import Foundation
class CalculadoraVista{
    func escribirMensajeError(mensaje:String){
        print(mensaje);
    }
    func leerOperador()->String{
        var operador = readLine()
        if let devolver = operador{
            return devolver
        }else{
            return ""
        }
    }
    func leerNumero()->Double{
        var numero = readLine()
        if let devolver = Double(numero!){
            return devolver
        }else{
            return 0
        }
    }
    func escribirNumero(numero:Double){
        print(numero);
    }
}
