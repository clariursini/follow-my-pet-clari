class CreateStudies < ActiveRecord::Migration[7.0]
  def change
    create_table :studies do |t|
      t.references :clinical_history, null: false, foreign_key: true

      t.timestamps
    end
  end
end
