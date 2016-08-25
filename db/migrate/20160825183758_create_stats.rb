class CreateStats < ActiveRecord::Migration[5.0]
  def change
    create_table :stats do |t|
      t.integer :num_throw
      t.integer :num_catches
      t.integer :points
      t.integer :distance_ran
      t.integer :user_id

      t.timestamps
    end
  end
end
