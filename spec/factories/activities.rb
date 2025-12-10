# frozen_string_literal: true

FactoryBot.define do
  factory :activity do
    sequence(:name) { |n| "Activity #{n}" }
  end
end
