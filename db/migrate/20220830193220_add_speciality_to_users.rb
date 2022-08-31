class AddSpecialityToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :speciality, :string
  end
end
