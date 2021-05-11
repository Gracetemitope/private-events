class UpdateMigration < ActiveRecord::Migration[6.1]
  def change
    change_column :privates, :event_date, :datetime

  end
end
