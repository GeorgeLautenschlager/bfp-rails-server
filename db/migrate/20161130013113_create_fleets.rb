class CreateFleets < ActiveRecord::Migration[5.0]
  def change
    create_table :fleets do |t|
      t.string :name
      t.string :list
      t.integer :game_id
      t.integer :player_id
      t.integer :commander_id
      t.integer :points_limit

      t.timestamps
    end
  end
end
