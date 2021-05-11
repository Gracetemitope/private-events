class DropAttendeesTable < ActiveRecord::Migration[6.1]
  def change
    def up
      drop_table :EventAttendees
    end
  
    def down
      raise ActiveRecord::IrreversibleMigration
    end
  end
end
