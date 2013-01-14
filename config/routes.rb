SimpleAccounts::Application.routes.draw do
  
	scope ':tax_year' do
		root 		to: 'summary#index'
		resources	:invoices
		resources	:expenses
		resources	:clients
	end

end
