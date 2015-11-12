module Referencia

Node = Struct.new(:value, :next, :back)

 class Lista

    def initialize(value)
     @head = Node.new(value,nil,nil)
     @last = @head
    end
     
    def addEnd(val)
         @last.next = Node.new(val,nil,@last)
         @last = @last.next
    end
    
    def addBeg(val)
         @head.back = Node.new(val,@head,nil)
         @head = @head.back
    end
    
 end

end


