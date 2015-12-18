class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_category
  before_filter :configure_permitted_parameters, if: :devise_controller?
	helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      @order = Order.find(session[:order_id])
    else
      Order.new
      #current_user.orders.create
      #session[:order] = @order.to_param
    end
  end
  private
	  # Get all category
	  def set_category
	  	@categories = Category.all if @categories.nil?
	  end
	protected
	  def configure_permitted_parameters
	    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password,
	      :password_confirmation, :remember_me, :avatar, :avatar_cache) }
	    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password,
	      :password_confirmation, :current_password, :avatar, :avatar_cache) }
	  end
end
