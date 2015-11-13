require 'spec_helper'

describe Referencia do
    before :each do
    @libro = Referencia::Entrada.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "(July 7, 2013)", ["ISBN-13: 978-1937785499","ISBN-10: 1937785491"])
    @libro2 = Referencia::Entrada.new(["Scott Chacon"]," Pro Git 2009th Edition.", "Pro"," Apress; 2009 edition"," (August 27, 2009)", ["ISBN-13: 978-1430218333","ISBN-10: 1430218339."])
    @lista = Referencia::Lista.new(0)
    end
    
    it 'Se extrae el primer elemento de la lista' do
			expect(@lista.takehead).to eq 0
			expect(@lista.takehead).to eq nil
		end
		
	it 'Se extrae el ultimo elemento de la lista' do
			expect(@lista.takelast).to eq 0
			expect(@lista.takelast).to eq nil
		end

end