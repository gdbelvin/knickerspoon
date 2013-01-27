class Person < ActiveRecord::Base
  attr_accessible :DOB, :citizenship_status, :current_address, :first_name, :last_name, :mobile, :taken_city, :taken_country
end
