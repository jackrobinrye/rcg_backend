class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.boolean :dm

      t.timestamps
    end
  end
end
