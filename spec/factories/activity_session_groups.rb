# frozen_string_literal: true

FactoryBot.define do
  factory :activity_session_group do
    activity
    sequence(:name) { |n| "Session Group #{n}" }
  end
end
