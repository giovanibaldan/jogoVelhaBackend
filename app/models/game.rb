class Game < ApplicationRecord
  def reset
    self.winner = ""
    self.game_state = []
    save
  end

  # Tentativa de usar o principio Single Responsibility Principle
  # Lógica principal para verificar o vencedor
  def verify_winner
    if game_state.count { |cell| cell != "" } >= 5
      verify_column
      verify_row
      verify_diagonal
      verify_draw
      save
    else
      self.winner = ""
    end
  end

  # Lógica para verificar o empate
  def verify_draw
    # verify_column
    # verify_row
    # verify_diagonal
    if winner == "" && game_state.all? { |cell| cell != "" }
      self.winner = "Draw"
    end
  end

  # Lógica para verificar a coluna
  def verify_column
    (0..2).each do |i|
      if game_state[i] == game_state[i + 3] && game_state[i] == game_state[i + 6] && game_state[i] != ""
        self.winner = game_state[i]
      end
    end
  end

  # Lógica para verificar a linha
  def verify_row
    (0..2).each do |i|
      if game_state[i * 3] == game_state[i * 3 + 1] && game_state[i * 3] == game_state[i * 3 + 2] && game_state[i * 3] != ""
        self.winner = game_state[i * 3]
      end
    end
  end

  # Lógica para verificar a diagonal
  def verify_diagonal
    if game_state[0] == game_state[4] && game_state[0] == game_state[8] && game_state[0] != ""
      self.winner = game_state[0]
    elsif game_state[2] == game_state[4] && game_state[2] == game_state[6] && game_state[2] != ""
      self.winner = game_state[2]
    end
  end
end
