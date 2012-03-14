class Product < ActiveRecord::Base
  attr_accessible :title, :category_id,:description,:tagline, :published
  belongs_to :category
  
  has_one :metatag, :as => :metatagable,  :dependent => :destroy
  attr_accessible :metatag_attributes 
  attr_writer :metatag_attributes
  accepts_nested_attributes_for :metatag
  
  has_many :albums, :as => :albumable, :dependent => :destroy
end
