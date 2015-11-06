require 'spec_helper'

describe Referencia do
  before :each do
        @libro = Referencia::Entrada.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "(July 7, 2013)", ["ISBN-13: 978-1937785499","ISBN-10: 1937785491"])
    end
=begin  
  it 'has a version number' do
    expect(Referencia::VERSION).not_to be nil
  end
=end
  
  
end
