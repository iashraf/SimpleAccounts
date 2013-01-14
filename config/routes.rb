SimpleAccounts::Application.routes.draw do
  
	root to: 'summary#redirect'

	scope ':tax_year' do
		root 		to: 'summary#index'
		resources	:invoices
		resources	:expenses
		resources	:clients
	end

end
