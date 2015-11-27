module Referencia

    class Entrada
        include Comparable
        def initialize(autores, titulo, serie = nil, editorial, numedicion, fecha, isbn)
            @autores = autores
            @titulo = titulo
            @serie = serie
            @editorial = editorial
            @numedicion = numedicion
            @fecha = fecha
            @isbn = isbn
        end

        def <=>(other)
            @autores <=> other.getautores()
        end
        
        def getautores
          return @autores
        end
        
        def gettitulo
            return @titulo
        end
        
        def getserie
            return @serie
        end
        
        def geteditorial
            return @editorial
        end
        
        def getnumedicion
            return @numedicion
        end
        
        def getfecha
            return @fecha
        end
        
        def getisbn
            return @isbn
        end
        
        def formateada()
            "#{@autores.join(", ")} \n #{@titulo} \n #{@serie} \n #{@editorial} \n #{@numedicion} \n #{@fecha} \n #{@isbn.join(", ")}"
        end
    end
end
