FactoryGirl.define do
  factory :ship do
    sequence(:name){|n| "ship-#{n}"}
    sequence(:x_coord){|n| n*100}
    sequence(:y_coord){|n| n*100}
    bearing 90
    points 100
    size Ship::CRUISER
    fleet
  end

  factory :fleet do
    sequence(:name){|n| "fleet-#{n}"}
    list "Imperial Navy"
    points_limit 500

    factory :fleet_with_ships do
      transient do
        ships_count 5
      end

      after(:create) do |fleet, evaluator|
        create_list(:ship, evaluator.ships_count, fleet: fleet)
      end
    end
  end
end
