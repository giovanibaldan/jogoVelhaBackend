class Game < ApplicationRecord
  def reset
    self.winner = ""
    self.game_state = []
    save
  end
end
