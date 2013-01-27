class CreateDescriptiveAddresses < ActiveRecord::Migration
  def change
    create_table :descriptive_addresses do |t|
      t.integer :person
      t.string :country

      t.timestamps
    end
  end
end
