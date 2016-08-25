class CreateGamesTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :games_teams do |t|
      t.integer :game_id
      t.integer :team_id


      t.timestamps
    end
  end
end
