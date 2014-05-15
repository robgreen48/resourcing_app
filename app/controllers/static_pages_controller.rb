class StaticPagesController < ApplicationController
  before_action :set_month_view

  def home
  end

  def help
  end

  def utilisation
  	month_view2 = session[:month_view].strftime("%m")
  	@planned_hours = PlannedHour.where("strftime('%m', month) + 0 = ?", month_view2.to_i)
  	
    @user = User.all

  end


  def set_month_view
  	if session[:month_view] == nil
  		session[:month_view] = DateTime.new(Time.now.year, Time.now.month, 1, 0, 0, 0, "+00:00")
  	end
  end

  def increment_month_view
  session[:month_view] = session[:month_view] + 1.month
  redirect_to utilisation_path
  end

  def decrement_month_view 
  session[:month_view] = session[:month_view] - 1.month
  redirect_to utilisation_path
  end

end