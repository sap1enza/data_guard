FactoryBot.define do
  factory :employee do
    name { FFaker::Name.unique.name }
    unit
  end
end
