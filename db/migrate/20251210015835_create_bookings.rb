class CreateBookings < ActiveRecord::Migration[8.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :activity_session, null: false, foreign_key: true
      t.datetime :deleted_at

      t.timestamps
    end

    add_index :bookings, :deleted_at
  end
end
