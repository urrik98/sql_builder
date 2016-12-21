class AddDescriptionToDatabases < ActiveRecord::Migration[5.0]
  def change
    add_column :databases, :description, :text
  end
end
