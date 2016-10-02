FactoryGirl.define do
  factory :ship do
    sequence(:name){|n| "ship-#{n}"}
    location_x 500
    location_y 500
    orientation 90
  end
end
