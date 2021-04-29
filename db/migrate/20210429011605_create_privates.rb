class CreatePrivates < ActiveRecord::Migration[6.1]
  def change
    create_table :privates do |t|
      t.integer :event_date

      t.timestamps
    end
  end
end
