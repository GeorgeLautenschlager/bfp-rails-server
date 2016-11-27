class RenameShipOrientation < ActiveRecord::Migration[5.0]
  def change
    rename_column :ships, :orientation, :bearing
  end
end
