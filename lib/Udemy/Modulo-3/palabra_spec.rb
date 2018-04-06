require_relative 'palabra'

RSpec.describe Palabra do

  # Usamos let para inicializar la variable 'palindromo' de manera tardía
  let(:palindromo) {Palabra.new("madam")}

  it 'debería ser palíndromo' do
    expect(palindromo.original).to eq(palindromo.al_reves)
  end

  # Usamos let para inicializar la variable 'no_palindromo' de manera tardía
  let(:no_palindromo) {Palabra.new("Madame")}

  it 'NO debería ser palíndromo' do
    expect(no_palindromo.original).not_to eq(no_palindromo.al_reves)
  end
end