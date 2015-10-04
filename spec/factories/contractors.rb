FactoryGirl.define do
  factory :contractor do
    name { Faker::Company.name }
    street { Faker::Address.street_address}
    zip_code { Faker::Address.zip }
    city { Faker::Address.city }
    nip { Faker::Number.number(10) }
  end

end


