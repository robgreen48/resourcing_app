class User < ActiveRecord::Base
	has_many :planned_hour
	has_many :numbers, :through => :planned_hour
	has_many :holidays
end
