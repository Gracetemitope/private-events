class EventAttendees < ActiveRecord::Migration[6.1]
  def change
    create_table :EventAttendees do |t|
      t.integer :attendees_id
      t.text :description
      t.timestamps
    end
  end
end
