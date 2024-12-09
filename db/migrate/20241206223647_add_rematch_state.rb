class AddRematchState < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :rematch_state, :boolean, default: false
  end
end
