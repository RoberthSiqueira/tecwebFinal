class RemoveHometownDeviceFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :hometown, :string
    remove_column :users, :device, :string
  end
end
