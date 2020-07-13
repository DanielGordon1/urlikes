FactoryBot.define do
  factory :link do
    url { Faker::Internet.url(scheme: 'https')}
    title { Faker::ChuckNorris.fact }
    nerd { association(:nerd) }
  end
end
