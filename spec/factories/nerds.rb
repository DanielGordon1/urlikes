FactoryBot.define do
  factory :nerd do
    email { Faker::Internet.email }
    password { "password" }
  end
end
