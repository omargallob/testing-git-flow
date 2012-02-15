class Category < ActiveRecord::Base
  attr_accessible :title, :parent_id, :position, :description, :name,:navlabel
  has_many :posts
  has_many :subcategories, :class_name => 'Category', :foreign_key => 'parent_id'
  belongs_to :parent, :class_name => 'Category', :foreign_key => 'parent_id'

  has_one :metatag, :as => :metatagable,  :dependent => :destroy
  attr_accessible :metatag_attributes 
  attr_writer :metatag_attributes
  accepts_nested_attributes_for :metatag
  
  def self.find_main
     Category.order("position").where("parent_id IS ?", nil).all
   end
   def self.find_sub(pid)
     Category.order("position").where('parent_id = ?', pid).all
   end
   def self.find_all_sub
     Category.order("position").where('parent_id IS NOT ?', nil).all
   end
end
