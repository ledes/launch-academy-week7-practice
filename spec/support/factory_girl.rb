require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end

  factory :manufacturer do
    name "Motorola"
    country "USA"
  end

  factory :phone do
    year "Motorola"
    battery_life "USA"
    manufacturer_id 1
  end

end
