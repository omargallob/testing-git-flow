class ApplicationController < ActionController::Base
  protect_from_forgery
	before_filter :tag_cloud


	def tag_cloud
		@tags = Post.published.tag_counts_on(:tags)
	end
end
