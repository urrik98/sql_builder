class AddTableTypeToTables < ActiveRecord::Migration[5.0]
  def change
    add_column :tables, :tabletype, :string
  end
end
