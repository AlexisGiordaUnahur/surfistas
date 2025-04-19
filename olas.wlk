import surfers.*

object olaPacifica {

    method intensidad() = 10

    method puedeSerSurfeadaPor(unSurfer){return true}

    method serSurfeada(){}
}

object olaBestia {
    var intensidad = 30

    method intensidad() = intensidad
    method puedeSerSurfeadaPor(unSurfer){
        return unSurfer.distanciaMax() >= intensidad
    }
    method serSurfeada(){
        intensidad = intensidad * 1.15
    }
}

object olaKamikaze {

    var experiencia = 20

    method intensidad() = 50
    method puedeSerSurfeada(unSurfer){
        return unSurfer.experiencia() >= experiencia
    }
    method serSurfeada(){
        experiencia += 5
    }
}