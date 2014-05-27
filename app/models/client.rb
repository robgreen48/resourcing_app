class Client < ActiveRecord::Base
	has_many :planned_hours
	has_many :numbers, :through => :planned_hours
	has_many :client_fees

def total_planned_hours(view)
	self.planned_hours.where(:month => view.beginning_of_day..view.end_of_day).sum(:number)
end

def paid_for_hours(view)
	retainer = self.client_fees.where(:month => view.beginning_of_day..view.end_of_day).sum(:fee)
	hours = (retainer / self.day_rate) * 7.5
end

end
