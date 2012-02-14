class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :title
      t.integer :position
      t.text :description
      t.string :image
      t.integer :album_id

      t.timestamps
    end
  end
end
