class ActivitySession < ApplicationRecord
  belongs_to :activity_session_group
  belongs_to :user
  has_many :bookings, dependent: :destroy

  def full?
    bookings.where(deleted_at: nil).count >= capacity
  end
end