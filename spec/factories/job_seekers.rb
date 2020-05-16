# frozen_string_literal: true

FactoryBot.define do
  factory :job_seeker do
    email { Faker::Internet.unique.email }
    password { Faker::Internet.unique.password min_length: 8 }
    name { Faker::Name.unique.name }

    trait :skip_validate do
      to_create { |instance| instance.save validate: false }
    end
  end
end
