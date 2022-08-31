class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.references :species_type, null: false, foreign_key: true
      t.date :birthday

      t.timestamps
    end
  end
end
