class User < ActiveRecord::Base
	has_many :planned_hours
	has_many :numbers, :through => :planned_hour
	has_many :holidays

	def total_hours(view)
		total_hours = self.planned_hours.where(:month => view.beginning_of_day..view.end_of_day).sum(:number)
	end

	def days_off(view)
		days_off = self.holidays.where(:month => view.beginning_of_day..view.end_of_day).sum(:days_off)
	end

	def total_available_hours(view)
		d = Date.new(view.year, view.month)
		working_days = (d.at_beginning_of_month..d.at_end_of_month).count {|day| !day.saturday? && !day.sunday? }
		working_hours_in_month = working_days * 7.5

		total_available_hours = ( (working_hours_in_month / 100) * self.normal_hours ) - ( self.days_off(view) * 7.5 )
	end

	def calc_utilisation(view)
		utilisation = self.total_hours(view) / self.total_available_hours(view) * 100
	end

end
