class AddColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :location, :string
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
    add_column :users, :doctors, :string
    add_column :users, :phone, :string
  end
end
