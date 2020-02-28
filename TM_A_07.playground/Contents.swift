import UIKit
/*:
# Playground - Actividad 7
* Valor por tipo y por referencia
* Funciones personalizadas Y Genericos
* Funciones de la biblioteca Swift para Arreglos
*/


/*: 
### Valor por tipo y por referencia
A) Para la colección "var costo_referencia:[Float] = [8.3,10.5,9.9]", aplicar el impuesto del 16% a través de recorrer la colección "costo_referencia" para aplicar el impuesto a cada cantidad, crear una función Impuesto que recibe como parámetro la colección y regrese aplicado el impuesto a cada cantidad.
*/
    var costo_referencia : [Float] = [8.3, 10.5, 9.9]

    func addIva( data:[Float] ) -> [Float] {
        var ivaAdded:[Float] = []
        
        for number:Float in data {
            ivaAdded.append(number * 0.16 + number)
        }
        
        return ivaAdded
    }

    let valuesWithIva = addIva(data: costo_referencia)

    print("Sin iva: \(costo_referencia)")
    print("Con iva: \(valuesWithIva)")
//: B) Crear la función "sumaTres"  que reciba una función con dos valores a sumar y un segundo parametro para sumar el tercer número.
func sumaTres(addTwoValues:(Int, Int), handler:Int) -> Int {
    return (addTwoValues.0 + addTwoValues.1 + handler)
}

print(" -> \(sumaTres(addTwoValues:(20, 30), handler: 40))")





/*:
### Funciones personalizadas y Genéricos

 
 A) Generics: Crear la función genérica para intercambiar valores entre dos variables del mismo tipo.
*/
var dataOne = 10
var dataTwo = 12

func intercVal<T>(a:T, b:T) {
    let handler = dataOne
    dataOne = dataTwo
    dataTwo = handler
}

intercVal(a: dataOne, b: dataTwo)

print("PRIMERO \(dataOne)")
print("SEGUNDO \(dataTwo)")


//: B) Función personalizada: Crear la función "Transformar" que reciba como parámetro una colección de tipo Int  "var datos = [3,7,9,2]" y una función que transforme cada valor de la coleción en una operación definida fuera de la función, regresando una colección transformada.


var datos : [Int] = [3, 7, 9, 2]

func Transformar<T>(type:T, add:(T) -> T) -> T{
    return add(type)
}

print("\(Transformar(type: datos) {(type) in type})")
/*:
### Biblioteca de Swift
A) Aplicar la función de librería de Swift "map" para la colección var precios = [4.2, 5.3, 8.2, 4.5] y aplicar el impuesto de 16% y asignarla a la variable "impuesto"
*/
var precios : [Float] = [4.2, 5.3, 8.2, 4.5]
var impuesto = precios.map {addIva(data: [$0])}

print(impuesto)


//: B) Aplicar la función de la librería de Swift "filter" para la colección resultante "impuesto" del paso A, en donde se obtengas solo los precios mayores a 6.0 y asignarlos a la variable "precio_menor"

let precio_menor = valuesWithIva.filter { $0 < 6.0}

print(precio_menor)



