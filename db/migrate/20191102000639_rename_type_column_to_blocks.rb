class RenameTypeColumnToBlocks < ActiveRecord::Migration[5.2]
  def change
    rename_column :blocks, :type, :kind
  end
end
