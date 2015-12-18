class CartsController < ApplicationController
  def show
  	@order_items = current_order.order_items
  end

  #TODO
  # 1 -> validate panier 
  def checkout 
  	@order_items = current_order.order_items
  	
  	#@current_user = current_user
  	#@customer = Customer.new
  	#@customer.user_id = params[:category_id]
  end
end
