class CreateColumns < ActiveRecord::Migration[5.0]
  def change
    create_table :columns do |t|
      t.string :name
      t.references :table, foreign_key: true
      t.string :datatype

      t.timestamps
    end
  end
end
