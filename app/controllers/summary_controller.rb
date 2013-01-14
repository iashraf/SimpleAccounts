class SummaryController < ApplicationController

	def index
		@invoices = tax_year.invoices.all
		@expenses = tax_year.expenses.all
	end

end
