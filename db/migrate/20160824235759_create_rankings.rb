class CreateRankings < ActiveRecord::Migration[5.0]
  def change
    create_table :rankings do |t|
      t.integer :win
      t.integer :lose
      t.integer :tie
      t.integer :team_id

      t.timestamps
    end
  end
end
