class AddColumnBlocks < ActiveRecord::Migration[5.2]
  def change
    add_column :blocks, :total, :integer
  end
end
