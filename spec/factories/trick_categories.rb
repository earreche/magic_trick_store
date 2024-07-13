# frozen_string_literal: true

FactoryBot.define do
  factory :trick_category do
    name { Faker::Lorem.sentence(word_count: 6) }
  end
end
