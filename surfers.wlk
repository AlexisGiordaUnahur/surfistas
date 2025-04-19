import olas.*

object luna {
    var energia = 80
    var experiencia = 0

    method energia() = energia
    method experiencia() = experiencia
    method descansar(){
        energia = energia + 30
    }
    method distanciaMax() = energia * 2
    method puedeSurfear(unaOla){
        return energia >= unaOla.intensidad() && 
                unaOla.puedeSerSurfeadaPor(self)
    }
    method surfear(unaOla){
        if(self.puedeSurfear(unaOla)){
            energia = energia - unaOla.intensidad()
            experiencia = experiencia + 15
            unaOla.serSurfeada()
        }else{
            self.descansar()
        }
    }
}

object toby {
    var energia = 50
    var experiencia = 0

    method energia() = energia
    method experiencia() = experiencia
    method distanciaMax() = 100 + (experiencia/2)
    method descansar(){
        energia = energia + 20
    }
    method puedeSurfear(unaOla){
        return energia >= unaOla.intensidad() && 
                unaOla.puedeSerSurfeadaPor(self)
    }
    method surfear(unaOla){
        if(self.puedeSurfear(unaOla)){
            energia = energia - unaOla.intensidad()
            experiencia = experiencia + (unaOla.intensidad()/2)
            unaOla.serSurfeada()
        }else{
            self.descansar()
        }
    }
}