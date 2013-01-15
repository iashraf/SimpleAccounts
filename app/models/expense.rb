class Expense < ActiveRecord::Base

	attr_accessible :date, :item, :amount

	validates	:date, presence: true
	validates	:item, presence: true
	validates	:amount, presence: true

end
