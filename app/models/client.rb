class Client < ActiveRecord::Base

	has_many :invoices

	attr_accessible :name, :email

	validates :name, presence: true
	validates :email, presence: true
	
end
