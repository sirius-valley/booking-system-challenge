class CreateActivitySessions < ActiveRecord::Migration[8.1]
  def change
    create_table :activity_sessions do |t|
      t.references :activity_session_group, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :capacity, null: false, default: 10
      t.datetime :starts_at, null: false
      t.datetime :ends_at, null: false

      t.timestamps
    end
  end
end
