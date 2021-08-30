class Produto
  attr_accessor :nome, :categoria, :preco, :estoque

  def initialize(nome:, preco:, estoque:, categoria: Categoria.new)
    @nome = nome
    @categoria = categoria
    @preco = preco
    @estoque = estoque
  end

  def adiciona_estoque(quantidade)
    @estoque += quantidade
  end

  def remove_estoque(quantidade)
    @estoque -= quantidade
  end
end
