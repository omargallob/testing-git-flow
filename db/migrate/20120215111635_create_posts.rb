class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :title
      t.integer :category_id
      t.text :body
      t.boolean :published
      t.datetime :published_on
      t.datetime :start_at
      t.datetime :end_at
      t.string :image

      t.timestamps
    end
  end
end
