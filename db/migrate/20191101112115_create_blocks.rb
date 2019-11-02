class CreateBlocks < ActiveRecord::Migration[5.2]
  def change
    create_table :blocks do |t|
      t.integer :sheet
      t.boolean :smoking
      t.string :type

      t.timestamps
    end
  end
end
