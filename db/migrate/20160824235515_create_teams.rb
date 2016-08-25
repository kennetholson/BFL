class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :mascot
      t.integer :num_players
      t.integer :game_id

      t.timestamps
    end
  end
end
