class AdminController < ApplicationController
	before_action :authenticate_admin!

  def home
  	@movies = Movie.order('title DESC').all
  	@users = User.all
  	@orders = Order.all
  end
  
end
