class ActivitySession < ApplicationRecord
  belongs_to :activity_session_group
  belongs_to :user
  has_many :bookings, dependent: :destroy

  def full?
    bookings.count >= capacity
  end
end