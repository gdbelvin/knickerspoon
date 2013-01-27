class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.date :DOB
      t.string :taken_country
      t.string :taken_city
      t.string :citizenship_status
      t.text :mobile
      t.integer :current_address

      t.timestamps
    end
  end
end
