class Palabra
  def initialize(caracteres)
    @caracteres = caracteres
  end

  attr_accessor :caracteres

  def original
    @caracteres
  end

  def al_reves
    @caracteres.reverse
  end

  def es_palindromo?
    @caracteres == @caracteres.reverse
  end
end