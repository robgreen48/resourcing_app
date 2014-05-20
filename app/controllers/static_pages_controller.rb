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
    @user.sort_by! {|u| u.name}

  end

  def utilisation_travel
    view = session[:month_view]
    @planned_hours = PlannedHour.where(:month => view.beginning_of_day..view.end_of_day)

    @user = User.where(:team => "Travel")
    @user.sort_by! {|u| u.name}

  end

  def utilisation_retail
    view = session[:month_view]
    @planned_hours = PlannedHour.where(:month => view.beginning_of_day..view.end_of_day)

    @user = User.where(:team => "Retail")
    @user.sort_by! {|u| u.name}

  end

  def utilisation_tech
    view = session[:month_view]
    @planned_hours = PlannedHour.where(:month => view.beginning_of_day..view.end_of_day)

    @user = User.where(:speciality => "Tech SEO")
    @user.sort_by! {|u| u.name}

  end

  def utilisation_cultivate
    view = session[:month_view]
    @planned_hours = PlannedHour.where(:month => view.beginning_of_day..view.end_of_day)

    @user = User.where(:speciality => "Cultivate")
    @user.sort_by! {|u| u.name}

  end

  def utilisation_ppc
    view = session[:month_view]
    @planned_hours = PlannedHour.where(:month => view.beginning_of_day..view.end_of_day)

    @user = User.where(:speciality => "PPC")
    @user.sort_by! {|u| u.name}

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