module Referencia

Node = Struct.new(:value, :next, :back)

 class Lista
     include Enumerable
     
    def each
        aux=@head
        while aux != nil
            yield aux.value
            aux=aux.next
        end
    end

    def initialize(value)
        @head = Node.new(value,nil,nil)
        @last = @head
    end
     
    def addEnd(val)
         @last.next = Node.new(val,nil,@last)
         @last = @last.next
    end
    
    def addBeg(val)
        if @head == nil
            @head= Node.new(val,nil,nil)
        else
            @head.back = Node.new(val,@head,nil)
            @head = @head.back
        end
    end
    
    def delBeg()
        if @head != nil
            pepe=@head.next
            @head=nil
            @head=pepe
        end
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


