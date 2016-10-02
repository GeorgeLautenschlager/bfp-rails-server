class CreateShips < ActiveRecord::Migration[5.0]
  def change
    create_table :ships do |t|
      t.string :name
      t.integer :location_x
      t.integer :location_y
      t.integer :orientation

      t.timestamps
    end
  end
end
