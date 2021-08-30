class RockPaperScissors
  def play(actions)
    jogador_a = 0
    jogador_b = 0
    empate = 0
    result = { empate: 0, jogador_a: 0, jogador_b: 0 }
    regras = { 'pedra': 'tesoura', 'tesoura': 'papel', 'papel': 'pedra' }

    jogadas = actions.split("\n")
    jogadas.each do |el|
      jogos = el.split('vs')
      if jogos[0].strip == jogos[1].strip
        empate += 1
        result[:empate] = empate
      elsif (regras.fetch(jogos[0].strip.to_sym)) == jogos[1].strip
        jogador_a += 1
        result[:jogador_a] = jogador_a
      else
        jogador_b += 1
        result[:jogador_b] = jogador_b
      end
    end
    formata_resultado(result)
  end

  def formata_resultado(result)
    teste = []
    teste << "Empates: #{result[:empate]}" if result[:empate] >= 1
    teste << "Jogador A: #{result[:jogador_a]}" if result[:jogador_a] >= 1
    teste << "Jogador B: #{result[:jogador_b]}" if result[:jogador_b] >= 1
    teste.join(' | ')
  end
end
