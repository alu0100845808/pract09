module Referencia

Node = Struct.new(:value, :next, :back)

class Lista

    def initialize(value)
     @head = Node.new(value,nil,nil)
     @last = @head
     
        
    end
    
end



end


