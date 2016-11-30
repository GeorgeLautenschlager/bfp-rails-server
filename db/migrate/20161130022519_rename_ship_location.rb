class RenameShipLocation < ActiveRecord::Migration[5.0]
  def change
    rename_column :ships, :location_x, :x_coord
    rename_column :ships, :location_y, :y_coord
  end
end
