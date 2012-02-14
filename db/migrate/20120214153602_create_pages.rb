class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :navlabel
      t.string :name
      t.boolean :published
      t.text :body
      t.string :image
      t.integer :position

      t.timestamps
    end
  end
end
