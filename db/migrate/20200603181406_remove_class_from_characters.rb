class RemoveClassFromCharacters < ActiveRecord::Migration[6.0]
  def change
    remove_column :characters, :class
    add_column :characters, :cclass, :string
  end
end
