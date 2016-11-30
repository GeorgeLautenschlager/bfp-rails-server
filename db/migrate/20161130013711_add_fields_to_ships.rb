class AddFieldsToShips < ActiveRecord::Migration[5.0]
  def change
    add_column :ships, :size, :string
    add_column :ships, :ship_rule, :string
    add_column :ships, :hits, :integer
    add_column :ships, :speed, :integer
    add_column :ships, :turns, :integer
    add_column :ships, :points, :integer
    add_column :ships, :shields, :integer
    add_column :ships, :turrets, :integer
    add_column :ships, :fleet_id, :integer
    add_column :ships, :leadership, :integer
    add_column :ships, :armour, :json
  end
end
