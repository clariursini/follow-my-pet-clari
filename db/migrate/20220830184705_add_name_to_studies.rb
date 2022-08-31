class AddNameToStudies < ActiveRecord::Migration[7.0]
  def change
    add_column :studies, :name, :string
  end
end
