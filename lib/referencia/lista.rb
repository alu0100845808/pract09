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
    
    def delBeg()
        pepe=@heap.next
        @heap=pepe
        pepe.back=nil
    end
    
    def delEnd()
        pepe=@last.back
        @last=pepe
        pepe.next=nil
    end
    
    def takehead()
        if @head != nil
			value = @head.value
			@head = @head.next
			return value
		else
			return nil
		end
    end
    
    def takelast()
        if @last != nil
			value = @last.value
			@last = @last.back
			return value
		else
			return nil
		end
    end
    
 end

end


