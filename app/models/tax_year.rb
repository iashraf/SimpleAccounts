class TaxYear < ActiveRecord::Base

	attr_accessible :title, :start_date, :end_date

	def next
		TaxYear.where("id > ?", id).first
	end

	def prev
		TaxYear.where("id < ?", id).last
	end

end
