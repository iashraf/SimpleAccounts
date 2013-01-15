class InvoicesController < ApplicationController

	def index
		@invoices = Invoice.where("date_paid >= ? AND date_paid <= ?", tax_year.start_date, tax_year.end_date).order("date_paid DESC").all
	end

	def show
		@invoice = Invoice.find(params[:id].to_i)
	end

	def new
		@invoice = Invoice.new
	end

	def create
		@invoice = Invoice.new(params[:invoice])

		if @invoice.save
			redirect_to invoices_path
		else
			render :new
		end

	end

	def edit
		@invoice = Invoice.find(params[:id])
	end

	def update
		@invoice = Invoice.find(params[:id])

		if @invoice.update_attributes(params[:invoice])
			redirect_to invoices_path
		else
			render :edit
		end

	end

	def destroy
		@invoice = Invoice.find(params[:id])

		@invoice.destroy

		redirect_to invoices_path
	end

end
