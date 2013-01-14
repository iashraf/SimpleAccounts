class ApplicationController < ActionController::Base

	protect_from_forgery

	def tax_year
		@tax_year ||= TaxYear.find_by_title!(params[:tax_year].to_s)
	end
	helper_method :tax_year

end
