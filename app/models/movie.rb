class Movie < ActiveRecord::Base
	belongs_to :category
	has_many :order_items


	default_scope { where(active: true) }
	scope :recent, -> { order(created_at: :desc) }
	scope :released_desc, -> { order(released_year: :desc)}
	scope :released_asc, -> { order(released_year: :asc)}
	scope :price_min, lambda{|min| where(['price < ?', min])}
  scope :price_max, lambda{|max| where(['price > ?', max])}


	mount_uploader :image, ImageUploader 
  #for url "/id-title"
	def to_param
		"#{id} #{title}".parameterize
	end

	def self.search(search)
  	# search with title or description
  	where("title LIKE ?", "%#{search}%")
  	where("description LIKE ?", "%#{search}%")
	end
	#paginate 9 movie per page
	self.per_page = 9
end	
