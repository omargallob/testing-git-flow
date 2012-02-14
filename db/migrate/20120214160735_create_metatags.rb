class CreateMetatags < ActiveRecord::Migration
  def change
    create_table :metatags do |t|
      t.string :title
      t.string :description
      t.string :keywords
      t.integer :metatagable_id
      t.string :metatagable_type

      t.timestamps
    end
  end
end
