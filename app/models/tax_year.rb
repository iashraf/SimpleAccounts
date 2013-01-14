class TaxYear < ActiveRecord::Base

	has_many :invoices
	has_many :expenses

	attr_accessible :title, :start_date, :end_date

	def next
		TaxYear.where("id > ?", id).first
	end

	def prev
		TaxYear.where("id < ?", id).last
	end
end
