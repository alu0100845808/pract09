require 'spec_helper'

describe Referencia do
    before :each do
    @libro = Referencia::Entrada.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "(July 7, 2013)", ["ISBN-13: 978-1937785499","ISBN-10: 1937785491"])
    @libro2 = Referencia::Entrada.new(["Scott Chacon"]," Pro Git 2009th Edition.", "Pro"," Apress; 2009 edition"," (August 27, 2009)", ["ISBN-13: 978-1430218333","ISBN-10: 1430218339."])
    @libro3 =Referencia::Entrada.new(["David Flanagan", "Yukihiro Matsumoto"],"The Ruby Programmin Language",nil,"O'Really Media",1,"2008,2,4",["ISBN-10: 0596516177", "ISBN-13: 978-0596516178"])
    @libro4 =Referencia::Entrada.new(["David Chelimsky", "Dave Astels", "Bryan Helmkamp", "Dan North", "Zach Dennis", "Aslak Hellesoy"],"The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends","The Facets of Ruby","Pragmatic Bookshelf",1,"2012,12,25",["ISBN-10: 1934356379","ISBN-13: 978-1934356371"])
    @libro5 =Referencia::Entrada.new(["Richard E. Silverman"],"Git Pocket Guide",nil,"O'Really Media",1,"2013, 8, 2",["ISBN-10: 1449325866","ISBN-13: 978-1449325862"])
    @lista= Referencia::Lista.new(0)
    @lista2=Referencia::Lista.new(@libro)
    @lista2.addEnd(@libro2)
    @lista2.addEnd(@libro3)
    @lista2.addEnd(@libro4)
    @lista2.addEnd(@libro5)
    end
    
    it 'Se extrae el primer elemento de la lista' do
			expect(@lista.takehead).to eq 0
			expect(@lista.takehead).to eq nil
		end
		
	it 'Se extrae el ultimo elemento de la lista' do
			expect(@lista.takelast).to eq 0
			expect(@lista.takelast).to eq nil
		end
		
		it 'Insertar al principio un elemento' do
		    @lista.addBeg("pepe")
			expect(@lista.takehead).to eq "pepe"
		end
		
		it 'Elimina el principio' do
		    @lista.addBeg("pepe")
		    @lista.delBeg()
			expect(@lista.takehead).to eq 0
		end
		
		it 'Insertar al final un elemento' do
		    @lista.addEnd("pepe")
			expect(@lista.takelast).to eq "pepe"
		end
		
		it 'Elimina el ultimo' do
		    @lista.addEnd("pepe")
		    @lista.delEnd()
			expect(@lista.takelast).to eq 0
		end
		
		it "Pruebas con lista de referencias ultimo" do
      expect(@lista2.takehead).to be @libro
      expect(@lista2.takehead).to be @libro2
      expect(@lista2.takehead).to be @libro3
      expect(@lista2.takehead).to be @libro4
      expect(@lista2.takehead).to be @libro5
        end
        
        it "Pruebas con lista de referencias principio" do
      expect(@lista2.takelast).to be @libro5
      expect(@lista2.takelast).to be @libro4
      expect(@lista2.takelast).to be @libro3
      expect(@lista2.takelast).to be @libro2
      expect(@lista2.takelast).to be @libro
        end
        
         it "Pruebas de Eleazar" do
            expect(@lista2.takelast).to be @libro5
            @lista2.addEnd(5)
            expect(@lista2.takelast).to be 5
        end
        
        it "all?" do
            @lista.addBeg(@libro)
            expect(@lista.all?).to eq(true)
        end
        
        it "any?" do
            @lista.addBeg(@libro)
            expect(@lista.any?).to eq(true)
        end
        
        it "max and min" do
            @lista.addEnd(1)
            @lista.addEnd(8)
            @lista.addEnd(7)
            expect(@lista.max).to eq(8)
            expect(@lista.min).to eq(0)
        end
        
end