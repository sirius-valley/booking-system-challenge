class Activity < ApplicationRecord
  has_many :activity_session_groups, dependent: :destroy
end
