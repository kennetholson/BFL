class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :location
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
