class ExpensesController < ApplicationController

	def index
		@expenses = tax_year.expenses.order("date DESC").all
	end

	def show
		@expense = tax_year.expenses.find(params[:id].to_i)
	end

	def new
		@expense = tax_year.expenses.new
	end

	def create
		@expense = tax_year.expenses.new(params[:expense])

		if @expense.save
			redirect_to expenses_path
		else
			render :new
		end

	end

	def edit
		@expense = tax_year.expenses.find(params[:id])
	end

	def update
		@expense = tax_year.expenses.find(params[:id])

		if @expense.update_attributes(params[:expense])
			redirect_to expenses_path
		else
			render :edit
		end

	end

	def destroy
		@expense = tax_year.expenses.find(params[:id])

		@expense.destroy

		redirect_to expenses_path
	end

end
