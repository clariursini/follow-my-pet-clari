class CreateVaccinations < ActiveRecord::Migration[7.0]
  def change
    create_table :vaccinations do |t|
      t.references :vaccine, null: false, foreign_key: true
      t.references :clinical_history, null: false, foreign_key: true
      t.date :expiration_date

      t.timestamps
    end
  end
end
