FactoryBot.define do
  factory :link_like do
    nerd { association(:nerd) }
    link { association(:link) }
  end
end
