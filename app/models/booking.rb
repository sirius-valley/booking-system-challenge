class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :activity_session
  
  default_scope -> { where(deleted_at: nil) }
  scope :with_deleted, -> { unscope(where: :deleted_at) }

  def destroy
    update(deleted_at: Time.now)
  end
end