class PlayerSerializer < ActiveModel::Serializer
  attributes :id

  has_many :fleets
end
