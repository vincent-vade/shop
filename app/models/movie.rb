class Movie < ActiveRecord::Base
	belongs_to :category
	has_many :order_items
  default_scope { where(active: true) }
	mount_uploader :image, ImageUploader 

	def to_params
		"#{id} #{title}".parameterize
	end

	def self.search(search)
  	# Title is for the above case, the OP incorrectly had 'name'
  	where("title LIKE ?", "%#{search}%")
  	where("description LIKE ?", "%#{search}%")
	end


	#paginate 9 movie per page
	self.per_page = 9

end	
