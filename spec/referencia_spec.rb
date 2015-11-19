require 'spec_helper'

describe "Entrada" do
  before :each do
    @libro = Referencia::Entrada.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "(July 7, 2013)", ["ISBN-13: 978-1937785499","ISBN-10: 1937785491"])
  end
  
  it 'has a version number' do
    expect(Referencia::VERSION).not_to be nil
  end
  
  it "Existe un método para obtener el listado de autores" do
    expect(@libro.getautores).to eq(["Dave Thomas", "Andy Hunt", "Chad Fowler"])
  end
  
  
  it "Existe un método para obtener titulo" do
    expect(@libro.gettitulo).to eq("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide")
  end 
  
  it "Existe un método para obtener serie" do
    expect(@libro.getserie).to eq("(The Facets of Ruby)")
  end 
          
  it "Existe un método para obtener una editorial" do
    expect(@libro.geteditorial).to eq("Pragmatic Bookshelf")
  end
  
  it "Existe un método para obtener un número de edición" do
    expect(@libro.getnumedicion).to eq("4 edition")    
  end
  
  it "Existe un método para obtener uno más números ISBN" do
      expect(@libro.getisbn).to eq(["ISBN-13: 978-1937785499","ISBN-10: 1937785491"])    
  end
  
  it 'Existe un método para obtener la referencia formateada' do
    expect(@libro.formateada).to eq("Dave Thomas, Andy Hunt, Chad Fowler \n Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide \n (The Facets of Ruby) \n Pragmatic Bookshelf \n 4 edition \n (July 7, 2013) \n ISBN-13: 978-1937785499, ISBN-10: 1937785491") 
 end
        
end

describe "Libro" do
  before :each do
    @libro2 = Referencia::Libro.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "(July 7, 2013)", ["ISBN-13: 978-1937785499","ISBN-10: 1937785491"])
  end
  
  it "Es un libro" do
		    expect(@libro2.is_a?Referencia::Libro).to eq true 
		end
		
		it "Es subclase de Referencia" do
		    expect(@libro2.is_a?Referencia::Entrada).to eq true 
		end
		
		it "Es un Object" do
		    expect(@libro2.is_a?Object).to eq true 
		end
	    
	    it "Es subclase de BasicObject" do
		    expect(@libro2.is_a?BasicObject).to eq true
		end
        it "Es una instancia de libro" do
          expect(@libro2.instance_of?(Referencia::Libro)).to eq true
        end
        
          it "Es una instancia de entrada" do
          expect(@libro2.instance_of?(Referencia::Entrada)).to eq false
        end
end


describe "Publicacion" do
  before :each do
    @libro2 = Referencia::Publicacion.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "(July 7, 2013)", ["ISBN-13: 978-1937785499","ISBN-10: 1937785491"],"http://noexiste.com/")
  end
  
  it "Es un libro" do
		    expect(@libro2.is_a?Referencia::Publicacion).to eq true 
		end
		
		it "Es subclase de Referencia" do
		    expect(@libro2.is_a?Referencia::Entrada).to eq true 
		end
		
		it "Es un Object" do
		    expect(@libro2.is_a?Object).to eq true 
		end
	    
	    it "Es subclase de BasicObject" do
		    expect(@libro2.is_a?BasicObject).to eq true
		end
        it "Es una instancia de libro" do
          expect(@libro2.instance_of?(Referencia::Publicacion)).to eq true
        end
        
          it "Es una instancia de entrada" do
          expect(@libro2.instance_of?(Referencia::Entrada)).to eq false
        end
end
