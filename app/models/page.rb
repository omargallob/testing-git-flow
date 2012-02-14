class Page < ActiveRecord::Base
  attr_accessible :title, :navlabel,:name,:published, :position, :body, :image
  
  validates_presence_of :title, :navlabel
  validates_uniqueness_of :title
  
  mount_uploader :image, ImageUploader
  
  
  has_one :metatag, :as => :metatagable,  :dependent => :destroy
  attr_accessible :metatag_attributes 
  attr_writer :metatag_attributes
  accepts_nested_attributes_for :metatag
end
