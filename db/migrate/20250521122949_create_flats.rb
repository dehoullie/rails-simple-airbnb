class CreateFlats < ActiveRecord::Migration[7.1]
  def change
    create_table :flats do |t|
      t.string :name
      t.string :address
      t.string :description
      t.integer :price_per_night
      t.integer :number_of_guests
      t.integer :number_of_beds
      t.integer :number_of_toilets

      t.timestamps
    end
  end
end
