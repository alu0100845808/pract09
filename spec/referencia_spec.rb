require 'spec_helper'

describe Referencia do
  before :each do
    @libro = Referencia::Entrada.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "(July 7, 2013)", ["ISBN-13: 978-1937785499","ISBN-10: 1937785491"])
  end
  
  it 'has a version number' do
    expect(Referencia::VERSION).not_to be nil
  end
  
  it "Existe un método para obtener el listado de autores" do
    @libro.getautores.should eq(["Dave Thomas", "Andy Hunt", "Chad Fowler"])
  end
  
  
  it "Existe un método para obtener titulo" do
    @libro.gettitulo.should eq("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide")
  end 
  
  it "Existe un método para obtener serie" do
    @libro.getserie.should eq("(The Facets of Ruby)")
  end 
          
  it "Existe un método para obtener una editorial" do
    @libro.geteditorial.should eq("Pragmatic Bookshelf")
  end
  
  it "Existe un método para obtener un número de edición" do
          @libro.getnumedicion.should eq("4 edition")    
  end
        
        
end
