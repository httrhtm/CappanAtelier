FactoryBot.define do
  factory :shop do
    name { "MyString" }
    outline { "MyText" }
    area { nil }
    address { "MyString" }
    latitude { 1.5 }
    longitude { 1.5 }
    phone_number { "MyString" }
    postal_code { "MyString" }
  end
end
