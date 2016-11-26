class ShipSerializer < ActiveModel::Serializer
  attributes :id, :name, :location_x, :location_y, :heading

  def heading
    object.orientation
  end
end
