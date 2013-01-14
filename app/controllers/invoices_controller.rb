class InvoicesController < ApplicationController

	def index
		@invoices = tax_year.invoices.all
	end

	def show
		@invoice = tax_year.invoices.find(params[:id].to_i)
	end

	def new
		@invoice = tax_year.invoices.new
	end

	def create
		@invoice = tax_year.invoices.new(params[:invoice])

		if @invoice.save
			redirect_to invoices_path
		else
			render :new
		end

	end

	def edit
		@invoice = tax_year.invoices.find(params[:id])
	end

	def update
		@invoice = tax_year.invoices.find(params[:id])

		if @invoice.update_attributes(params[:invoice])
			redirect_to invoices_path
		else
			render :edit
		end

	end

	def destroy
		@invoice = tax_year.invoices.find(params[:id])

		@invoice.destroy

		redirect_to invoices_path
	end

end
