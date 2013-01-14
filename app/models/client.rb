class Client < ActiveRecord::Base

	has_many :invoices

	attr_accessible :name, :email
	
end
