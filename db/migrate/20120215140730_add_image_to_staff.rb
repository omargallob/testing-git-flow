class AddImageToStaff < ActiveRecord::Migration
  def change
    add_column :staffs, :image, :string

  end
end
