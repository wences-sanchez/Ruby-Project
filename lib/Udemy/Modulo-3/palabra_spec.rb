require_relative 'palabra'

RSpec.describe Palabra do

  # Llamado en el contexto de los ejemplos
  before(:example) do
    @palindromo = Palabra.new("madam")
    @no_palindromo = Palabra.new("Madame")
  end

  it 'la palabra debería ser palíndromo' do
    expect(@palindromo.es_palindromo?).to be_truthy
  end

  it 'la palabra NO debería ser palíndromo' do
    expect(@no_palindromo.es_palindromo?).to be_falsey
  end
end