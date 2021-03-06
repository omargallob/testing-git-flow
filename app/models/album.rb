class Album < ActiveRecord::Base
  attr_accessible :title, :description, :albumable_id, :albumable_type, :position, :category_id

   belongs_to :albumable, :polymorphic => true

   has_many :uploads, :dependent => :destroy

   belongs_to :category
   # attr_accessible :uploads_attributes 
   #   attr_writer :uploads_attributes
   #   accepts_nested_attributes_for :uploads, :reject_if => lambda { |a| a[:title].blank? }, :allow_destroy => true
end
