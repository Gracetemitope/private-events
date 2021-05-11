class EventAttendees < ActiveRecord::Migration[6.1]
  def change
    create_table :event_attendees do |t|
      t.references :user, null: false, foreign_key: true
      t.references :private, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
