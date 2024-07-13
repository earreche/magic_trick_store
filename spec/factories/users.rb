# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence :email do |n|
      "admin-#{n}@example.com"
    end
    password { Utils::StrongPassword.generate }
  end
end
