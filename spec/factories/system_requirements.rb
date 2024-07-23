FactoryBot.define do
  factory :system_requirement do
    sequence(:name) { |n| "Basic SetUp nr. #{n}" }
    operational_system { Faker::Computer.os }
    storage { %w[250GB 500GB 1TB].sample }
    processor { %w[Pentium K5 CoreI5 CoreI7 Rizen].sample }
    memory { %w[4GB 8GB 12GB 16GB].sample }
    video_board { 'Must to be processor compatible' }
  end
end
