class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :person
      t.string :first_name
      t.string :last_name
      t.text :mobile
      t.text :landline
      t.text :email
      t.text :relationship
      t.boolean :trusted
      t.boolean :authorized

      t.timestamps
    end
  end
end
