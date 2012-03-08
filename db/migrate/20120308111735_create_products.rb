class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.integer :category_id
      t.text :description
      t.string :tagline

      t.timestamps
    end
  end
end
