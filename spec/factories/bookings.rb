# frozen_string_literal: true

FactoryBot.define do
  factory :booking do
    user
    activity_session
  end
end
