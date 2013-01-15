class SummaryController < ApplicationController

	def index
		invoices = Invoice.where("date_paid >= ? AND date_paid <= ?", tax_year.start_date, tax_year.end_date)
		expenses = Expense.where("date >= ? AND date <= ?", tax_year.start_date, tax_year.end_date)

		@invoices = invoices.order("date_paid DESC").all
		@expenses = expenses.order("date DESC").all

		@totalIncome = invoices.sum("amount")
		@totalExpenditure = expenses.sum("amount")
	end

	def redirect
		redirect_to root_url(tax_year: "2012-2013")
	end

end
