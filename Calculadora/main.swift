//
//  main.swift
//  Calculadora
//
//  Created by alumno on 5/11/19.
//  Copyright © 2019 ulpgc.romero.dayron. All rights reserved.
//

import Foundation

print("Hello, World!")
var vista = CalculadoraVista()
var modelo = CalculadoraModelo()
var controlador = CalculadoraControlador(modelo: modelo, vista: vista)
controlador.realizarOperacion()


