class AddDescriptionToTables < ActiveRecord::Migration[5.0]
  def change
    add_column :tables, :description, :text
  end
end
