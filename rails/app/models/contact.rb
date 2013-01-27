class Contact < ActiveRecord::Base
  attr_accessible :authorized, :email, :first_name, :landline, :last_name, :mobile, :person, :relationship, :trusted
end
