FactoryBot.define do
  factory :game do
    mode { %i[pvp pve both].sample }
    release_date { '2024-07-22 21:24:33' }
    developer { Faker::Company.name }
    system_requirement
  end
end
