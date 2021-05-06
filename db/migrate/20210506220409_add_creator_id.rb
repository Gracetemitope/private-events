class AddCreatorId < ActiveRecord::Migration[6.1]
  def change
    add_column :privates, :creator_id, :integer

  end
end
