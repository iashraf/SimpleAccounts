class SummaryController < ApplicationController

	def index
		@invoices = tax_year.invoices.all
		@expenses = tax_year.expenses.all
	end

	def redirect
		redirect_to root_url(tax_year: "2012-2013")
	end

end
