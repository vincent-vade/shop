class Category < ActiveRecord::Base
	has_many :movies
	def to_param
		"#{id} #{name}".parameterize
	end
end
