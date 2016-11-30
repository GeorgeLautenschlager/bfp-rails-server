FactoryGirl.define do
  factory :ship do
    sequence(:name){|n| "ship-#{n}"}
    location_x 500
    location_y 500
    orientation 90
  end

  factory :fleet do
    sequence(:name){|n| "fleet-#{n}"}
    type "Imperial Navy"
    
    factory :fleet_with_ships
      transient do
        ships_count 5
      end

      after(:create) do |fleet, evaluator|
        create_list(:ship, evaluator.ships_count, fleet: fleet)
      end
    end
  end
end
