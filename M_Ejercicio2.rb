=begin
Ejercicio 2

Dado los siguientes módulos 

* Crear la clase Animal con un atributo "nombre". Agregar un método getter para el atributo "nombre"
* Crear las clases "Ave", "Mamifero" e "Insecto". Ambas heredan de "Animal"
* Crear las clases "Pinguino", "Paloma" y "Pato". Las tres heredan de "Ave"
* Crear las clases "Perro", "Gato" y "Vaca". Las tres heredan de "Mamifero"
* Crear las clases "Mosca", "Mariposa" y "Abeja". Las tres heredan de "Insecto"
* Incluye los módulos en cada subclase utilizando la instrucción "include" con el objetivo de definir las habilidades
  y tipo de alimentación de cada animal
=end

module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end

    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end

    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end

#Aqui empieza el codigo

class Animal
    attr_reader :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end

module Aves
    class Ave < Animal
        include Habilidades::Caminante
    end

    class Pinguino < Ave
        include Habilidades::Nadador
        include Alimentacion::Carnivoro
    end
    
    class Paloma < Ave
        include Habilidades::Volador
        include Alimentacion::Herbivoro
    end
    
    class Pato < Ave
        include Habilidades::Volador
        include Habilidades::Nadador
        include Alimentacion::Herbivoro
    end
end

module Mamiferos
    class Mamifero < Animal
        include Habilidades::Caminante
    end

    class Perro < Mamifero
        include Habilidades::Nadador
        include Alimentacion::Carnivoro
    end
    
    class Gato < Mamifero
        include Habilidades::Nadador
        include Alimentacion::Carnivoro
    end
    
    class Vaca < Mamifero
        include Alimentacion::Herbivoro
    end
end

module Insectos 
    class Insecto < Animal
        include Habilidades::Volador
        include Habilidades::Caminante
    end

    class Mosca < Insecto
        include Alimentacion::Carnivoro
    end
    
    class Mariposa < Insecto
        include Alimentacion::Herbivoro
    end
    
    class Abeja < Insecto
        include Alimentacion::Herbivoro
    end    
end


