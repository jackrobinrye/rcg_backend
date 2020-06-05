class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.integer :player_id
      t.string :name
      t.string :race
      t.string :cclass
      t.string :gender
      t.string :background
      t.string :alignment
      t.string :pc
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma

      t.timestamps
    end
  end
end
