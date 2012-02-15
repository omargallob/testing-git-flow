class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :surname
      t.string :twitter
      t.text :bio
      t.string :role
      t.integer :position
      t.datetime :started_on
      t.timestamps
    end
  end
end
