class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :location
      t.string :image_url
      t.string :url

      t.timestamps
      
      add_index :users, :provider
      add_index :users, :uid
      add_index :users, [:provider, :uid], unique: true
    end
  end
end
