require 'file_size_validator' 
class Upload < ActiveRecord::Base
  attr_accessible :title, :description, :photo,:crop_x,:crop_y, :crop_h, :crop_w,:album_id, :image, :position
  mount_uploader :image, ImageUploader
  belongs_to :album
  
  validates_presence_of :title, :image
  # attr_accessor  :crop_x, :crop_y, :crop_h, :crop_w
  #   after_update :reprocess_image, :if => :cropping?
  # 
  #   def image=(obj)
  #     super(obj)
  #     # Put your callbacks here, e.g.
  #     self.image = false  
  #   end
  # 
  #    validates :image, 
  #        :file_size => { 
  #          :maximum => 2.megabytes.to_i 
  #        }
  # 
  #    def cropping?
  #      !crop_x.blank? && !crop_y.blank?  && !crop_w.blank? && !crop_h.blank?
  #    end
  #    #     
  #    def image_geometry
  #      img = MiniMagick::Image.open("public"+self.image_url)
  #      @geometry = {:width => img[:width], :height => img[:height] }
  #    end
  #    # 
  #    private
  # 
  # 
  #    def reprocess_image
  #        image = MiniMagick::Image.from_file("public"+self.image.url)
  #        crop_params = "#{crop_w}x#{crop_h}+#{crop_x}+#{crop_y}"
  #        image.crop(crop_params)
  #        image
end
