class CreateSpeciesTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :species_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
