# frozen_string_literal: true

FactoryBot.define do
  factory :activity_session do
    activity_session_group
    user
    capacity { 10 }
    starts_at { 1.day.from_now }
    ends_at { 1.day.from_now + 1.hour }
  end
end
