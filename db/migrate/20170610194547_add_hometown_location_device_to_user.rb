class AddHometownLocationDeviceToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :hometown, :string
    add_column :users, :device, :string
  end
end
