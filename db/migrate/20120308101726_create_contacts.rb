class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.text :comment
      t.string :country

      t.timestamps
    end
  end
end
