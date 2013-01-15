class ExpensesController < ApplicationController

	def index
		@expenses = Expense.where("date >= ? AND date <= ?", tax_year.start_date, tax_year.end_date).order("date DESC").all
	end

	def show
		@expense = Expense.find(params[:id].to_i)
	end

	def new
		@expense = Expense.new
	end

	def create
		@expense = Expense.new(params[:expense])

		if @expense.save
			redirect_to expenses_path
		else
			render :new
		end

	end

	def edit
		@expense = Expense.find(params[:id])
	end

	def update
		@expense = Expense.find(params[:id])

		if @expense.update_attributes(params[:expense])
			redirect_to expenses_path
		else
			render :edit
		end

	end

	def destroy
		@expense = Expense.find(params[:id])

		@expense.destroy

		redirect_to expenses_path
	end

end
