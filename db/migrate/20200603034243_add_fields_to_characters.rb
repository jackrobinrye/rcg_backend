class AddFieldsToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :player_id, :integer
    add_column :characters, :name, :string
    add_column :characters, :gender, :string
  end
end
