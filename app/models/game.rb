class Game < ApplicationRecord
  # Método para resetar o jogo
  
  validates :winner, presence: true
  validates :game_state, presence: true

  def reset
    self.winner = ""
    self.game_state = ["", "", "", "", "", "", "", "", ""]
    save
  end

  # Tentativa de usar o principio Single Responsibility Principle
  # Método principal para verificar o vencedor
  def verify_winner
    verify_column
    verify_row
    verify_diagonal
    verify_draw
    verify_abandoned
    save
  end

  # Método para verificar se o jogo foi iniciado e não finalizado
  def verify_abandoned
    if game_state.count { |cell| cell != "" } < 5
      self.winner = ""
    end
  end

  # Método para verificar o empate
  def verify_draw
    if winner == "" && game_state.all? { |cell| cell != "" }
      self.winner = "Empate"
    end
  end

  # Método para verificar a coluna
  def verify_column
    (0..2).each do |i|
      if game_state[i] == game_state[i + 3] && game_state[i] == game_state[i + 6] && game_state[i] != ""
        self.winner = game_state[i]
      end
    end
  end

  # Método para verificar a linha
  def verify_row
    (0..2).each do |i|
      if game_state[i * 3] == game_state[i * 3 + 1] && game_state[i * 3] == game_state[i * 3 + 2] && game_state[i * 3] != ""
        self.winner = game_state[i * 3]
      end
    end
  end

  # Método para verificar a diagonal
  def verify_diagonal
    if game_state[0] == game_state[4] && game_state[0] == game_state[8] && game_state[0] != ""
      self.winner = game_state[0]
    elsif game_state[2] == game_state[4] && game_state[2] == game_state[6] && game_state[2] != ""
      self.winner = game_state[2]
    end
  end
end
