class Partner < ActiveRecord::Base
  attr_accessible :name,:website, :bio,:indsutry,:twitter, :logo, :position, :partner_since
  mount_uploader :logo, ImageUploader
  validates_presence_of :name
  validates_presence_of :website
end
