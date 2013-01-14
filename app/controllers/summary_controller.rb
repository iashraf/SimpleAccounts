class SummaryController < ApplicationController

	def index
		@invoices = tax_year.invoices.order("date_sent DESC").all
		@expenses = tax_year.expenses.order("date DESC").all
	end

	def redirect
		redirect_to root_url(tax_year: "2012-2013")
	end

end
