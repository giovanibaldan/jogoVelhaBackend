class ModifyGameStateInGames < ActiveRecord::Migration[6.1]
  def change
    change_column :games, :game_state, :string, array: true, default: ["","","","","","","","",""]
  end
end
