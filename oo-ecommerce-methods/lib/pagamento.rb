require_relative 'produto'

class Pagamento
  attr_accessor :produto, :quantidade, :preco, :valor

  def initialize(quantidade:, produto: 'Sem nome')
    @quantidade = quantidade
    @produto = produto
    @preco = produto.preco
  end

  def calcular_valor
    @valor = @quantidade * produto.preco if produto.preco >= 0
    @produto.estoque -= @quantidade
  end

  def aplicar_desconto(porcentagem)
    @valor -= @valor * porcentagem / 100
  end
end
