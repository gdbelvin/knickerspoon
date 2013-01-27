class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :person
      t.string :street_1
      t.string :street_2
      t.string :city
      t.string :region
      t.string :code
      t.string :country

      t.timestamps
    end
  end
end
