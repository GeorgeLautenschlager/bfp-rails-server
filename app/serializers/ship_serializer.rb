class ShipSerializer < ActiveModel::Serializer
  attributes :id, :name, :location_x, :location_y, :orientation
end
