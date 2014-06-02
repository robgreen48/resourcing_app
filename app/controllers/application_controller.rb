class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_month_view

  def set_month_view
  	if session[:month_view] == nil
  		session[:month_view] = DateTime.new(Time.now.year, Time.now.month, 1, 0, 0, 0, "+00:00")
  	end
  end

  def increment_month_view
    session[:month_view] = session[:month_view] + 1.month
    redirect_to :back
  end

  def decrement_month_view 
    session[:month_view] = session[:month_view] - 1.month
    redirect_to :back
  end
end
