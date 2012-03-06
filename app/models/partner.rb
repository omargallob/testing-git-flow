class Partner < ActiveRecord::Base
  attr_accessible :name,:website, :bio,:industry,:twitter, :logo, :position, :parnter_since, :partner_url
  mount_uploader :logo, ImageUploader
  validates_presence_of :name
  validates_presence_of :website
end
