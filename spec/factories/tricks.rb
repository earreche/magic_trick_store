# frozen_string_literal: true

FactoryBot.define do
  factory :trick do
    association :trick_category
    title { Faker::Lorem.sentence(word_count: 6) }
    description { Faker::Lorem.sentence(word_count: 20) }
    amount { Faker::Number.positive.to_i }
    currency { 1 }
    state { 1 }
  end
end
