class AddFieldsToShips < ActiveRecord::Migration[5.0]
  def up
    add_column :ships, :type, :string
    add_column :ships, :klass, :string
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

  def down
    remove_column :ships, :type
    remove_column :ships, :name
    remove_column :ships, :klass
    remove_column :ships, :hits
    remove_column :ships, :speed
    remove_column :ships, :turns
    remove_column :ships, :points
    remove_column :ships, :shields
    remove_column :ships, :turrets
    remove_column :ships, :fleet_id
    remove_column :ships, :leadership
    remove_column :ships, :armour
  end
end
