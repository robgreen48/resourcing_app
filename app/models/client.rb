class Client < ActiveRecord::Base
	has_many :planned_hours
	has_many :numbers, :through => :planned_hours
end
