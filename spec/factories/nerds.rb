FactoryBot.define do
  factory :nerd do
    sequence(:email) { |n| "test-#{n.to_s.rjust(3, '0')}@sample.com" }
    password { "123456" }
  end
end
