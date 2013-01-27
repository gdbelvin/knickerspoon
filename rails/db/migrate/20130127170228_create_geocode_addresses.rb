class CreateGeocodeAddresses < ActiveRecord::Migration
  def change
    create_table :geocode_addresses do |t|
      t.integer :person
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
