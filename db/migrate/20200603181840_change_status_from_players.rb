class ChangeStatusFromPlayers < ActiveRecord::Migration[6.0]
  def change
    remove_column :players, :status
    add_column :players, :dm, :boolean
  end
end
