class CreateActivitySessionGroups < ActiveRecord::Migration[8.1]
  def change
    create_table :activity_session_groups do |t|
      t.references :activity, null: false, foreign_key: true
      t.string :name, null: false
      t.datetime :start_date, null: false
      t.datetime :end_date, null: false

      t.timestamps
    end
  end
end
