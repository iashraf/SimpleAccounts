class Invoice < ActiveRecord::Base

	belongs_to :client

	attr_accessible :client_id, :date_sent, :date_paid, :client, :description, :amount

	validates	:client_id, presence: true
	validates	:date_sent, presence: true
	validates	:date_paid, presence: true
	validates	:client, presence: true
	validates	:description, presence: true
	validates	:amount, presence: true

end
