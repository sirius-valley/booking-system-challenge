# frozen_string_literal: true

FactoryBot.define do
  factory :activity_session_group do
    activity
    start_date { 1.day.from_now }
    end_date { 3.months.from_now }
    sequence(:name) { |n| "Session Group #{n}" }
  end
end
