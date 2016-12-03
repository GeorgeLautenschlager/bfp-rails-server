class ShipSerializer < ActiveModel::Serializer
  attributes :id, :name, :x_coord, :y_coord, :bearing
end
