FactoryBot.define do
  factory :unit do
    name { FFaker::Name.unique.name }
  end
end
