class Post < ActiveRecord::Base
  attr_accessible :name,:title, :body, :category_id, :published,:published_on, :start_at, :end_date, :end_at, :image
  
  belongs_to :category
  mount_uploader :image, ImageUploader
  
  
  has_one :metatag, :as => :metatagable,  :dependent => :destroy
  attr_accessible :metatag_attributes 
  attr_writer :metatag_attributes
  accepts_nested_attributes_for :metatag
  
  has_many :albums, :as => :albumable, :dependent => :destroy
end
