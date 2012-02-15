require 'file_size_validator' 
class Staff < ActiveRecord::Base
  attr_accessible :name,:surname, :bio,:role,:twitter, :image, :position, :started_on
  mount_uploader :image, ImageUploader
  validates_presence_of :name
  validates_presence_of :surname
end
