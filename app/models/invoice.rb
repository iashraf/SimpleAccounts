class Invoice < ActiveRecord::Base

	belongs_to :tax_year
	belongs_to :client

	attr_accessible :tax_year_id, :client_id, :date_sent, :date_paid, :client, :description, :amount

	validates	:tax_year_id, presence: true
	validates	:client_id, presence: true
	validates	:date_sent, presence: true
	validates	:date_paid, presence: true
	validates	:client, presence: true
	validates	:description, presence: true
	validates	:amount, presence: true

end
