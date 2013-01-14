class Expense < ActiveRecord::Base

	belongs_to :tax_year

	attr_accessible :tax_year_id, :date, :item, :amount

	validates	:tax_year_id, presence: true
	validates	:date, presence: true
	validates	:item, presence: true
	validates	:amount, presence: true

end
