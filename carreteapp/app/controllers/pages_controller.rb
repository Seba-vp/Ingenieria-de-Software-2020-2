class PagesController< ApplicationController
    def home
        puts "Hello world "
        @greeting = "La acción del controlador dice: Hola Mundo!"
    end
    
    def saludar
            "Hello world 2!"
    end
    def multiplicar(a)
        a*2
    end
end
