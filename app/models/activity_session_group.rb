class ActivitySessionGroup < ApplicationRecord
  belongs_to :activity
  has_many :activity_sessions, dependent: :destroy
end