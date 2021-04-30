class AddFieldsToPrivates < ActiveRecord::Migration[6.1]
  def change
    add_column :privates, :title_of_event, :string
    add_column :privates, :description, :text
    add_column :privates, :location, :string
    
  end
end
