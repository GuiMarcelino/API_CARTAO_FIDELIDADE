FactoryBot.define do
  factory :client do
    fullname { Faker::Name.name }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.phone_number }
    cpf { Faker::Code.ean(base = 11) }
    age {Faker::Number.between(from: 1, to: 99) }
  end
end
