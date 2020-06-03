class RemoveColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :characters, :type
    add_column :characters, :pc, :boolean
  end
end
