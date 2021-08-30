require_relative 'pagamento'
class PagamentoCredito < Pagamento
  attr_accessor :juros, :valor

  def initialize(quantidade:, juros:, produto:)
    super(quantidade: quantidade, produto: produto)
    @juros = juros
    @valor = 0
  end

  def calcular_valor
     @valor = @quantidade * produto.preco
  end

  def atualizar_valor
     @valor += (@valor / juros)
  end

  def aplicar_desconto(desconto)
    @valor -= (@quantidade * desconto / 100)
  end
end
