class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.string :website
      t.string :twitter
      t.text :bio
      t.string :industry
      t.integer :position
      t.datetime :parnter_since
      t.string :logo

      t.timestamps
    end
  end
end
