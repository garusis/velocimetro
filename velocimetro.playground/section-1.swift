import Foundation

import UIKit

enum Velocidades : Int{
    case Apagado=0
    case VelocidadBaja=20
    case VelocidadMedia=50
    case VelocidadAlta = 120
    
    init(velocidadInicial:Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad:Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial:Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> (actual:Int, velocidadEnCadena:String){
        var velocidadEnCadena:String
        let actVelocidad:Velocidades = self.velocidad
        switch(self.velocidad){
            case .Apagado:
                velocidadEnCadena = "Apagado"
                velocidad = Velocidades(velocidadInicial:Velocidades.VelocidadBaja)
            case .VelocidadBaja:
                velocidadEnCadena = "VelocidadBaja"
                velocidad = Velocidades(velocidadInicial:Velocidades.VelocidadMedia)
            case .VelocidadMedia:
                velocidadEnCadena = "VelocidadMedia"
                velocidad = Velocidades(velocidadInicial:Velocidades.VelocidadAlta)
            case .VelocidadAlta:
                velocidadEnCadena = "VelocidadAlta"
                velocidad = Velocidades(velocidadInicial:Velocidades.VelocidadMedia)
        }
        return (actVelocidad.rawValue, velocidadEnCadena)
    }
}

var auto : Auto = Auto()

for var i:Int = 0; i < 20; i++ {
    print(auto.cambioDeVelocidad())    
}