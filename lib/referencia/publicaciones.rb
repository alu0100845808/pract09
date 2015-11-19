require "referencia"
module Referencia
    
    class Publicacion < Entrada
         def initialize(autores, titulo, serie = nil, editorial, numedicion, fecha, isbn,url)
            super(autores,titulo,serie,editorial,numedicion,fecha,isbn)
            @url=url
         end
    end
end