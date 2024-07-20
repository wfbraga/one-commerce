FactoryBot.define do
  factory :system_requirement do
    sequence(:name) { |n| "Basic SetUp nr. #{n}" }
    operational_system { Faker::Computer.os }
    storage { Faker::Computer.storage }
    processor { Faker::Computer.cpu }
    memory { Faker::Computer.memory }
    video_board { 'Must to be processor compatible' }
  end
end
