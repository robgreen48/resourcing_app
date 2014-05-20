class StaticPagesController < ApplicationController
  before_action :set_month_view

  def home
  end

  def help
  end

  def utilisation
  	view = session[:month_view]
    @planned_hours = PlannedHour.where(:month => view.beginning_of_day..view.end_of_day)

    @user = User.all

  end

  def utilisation_travel
    view = session[:month_view]
    @planned_hours = PlannedHour.where(:month => view.beginning_of_day..view.end_of_day)

    @user = User.where(:team => "Travel")

  end

  def utilisation_retail
    view = session[:month_view]
    @planned_hours = PlannedHour.where(:month => view.beginning_of_day..view.end_of_day)

    @user = User.where(:team => "Retail")

  end

  def utilisation_tech
    view = session[:month_view]
    @planned_hours = PlannedHour.where(:month => view.beginning_of_day..view.end_of_day)

    @user = User.where(:speciality => "Tech SEO")

  end

  def utilisation_cultivate
    view = session[:month_view]
    @planned_hours = PlannedHour.where(:month => view.beginning_of_day..view.end_of_day)

    @user = User.where(:speciality => "Cultivate")

  end

  def utilisation_ppc
    view = session[:month_view]
    @planned_hours = PlannedHour.where(:month => view.beginning_of_day..view.end_of_day)

    @user = User.where(:speciality => "PPC")

  end


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