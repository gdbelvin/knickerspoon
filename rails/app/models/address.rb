class Address < ActiveRecord::Base
  attr_accessible :city, :code, :country, :person, :region, :street_1, :street_2
end
