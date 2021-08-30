class Produto
  attr_accessor :nome, :categoria, :preco, :estoque

  def initialize(nome:, preco:, estoque:, categoria: 'Geral')
    @nome = nome
    @categoria = categoria
    @preco = preco
    @estoque = estoque
  end
end
