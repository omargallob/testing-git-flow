class Post < ActiveRecord::Base
  attr_accessible :name,:title,:tag_list, :body,:category_id, :published,:published_on, :start_at, :end_date, :end_at, :image
  
  belongs_to :category
  mount_uploader :image, ImageUploader
  
  acts_as_taggable
  acts_as_taggable_on :tags
  has_one :metatag, :as => :metatagable,  :dependent => :destroy
  attr_accessible :metatag_attributes 
  attr_writer :metatag_attributes
  accepts_nested_attributes_for :metatag
  
  has_many :albums, :as => :albumable, :dependent => :destroy
  
  scope :published, where(:published => true).order("published_on DESC")
end
