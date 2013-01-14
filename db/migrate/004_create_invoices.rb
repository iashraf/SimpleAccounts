class CreateInvoices < ActiveRecord::Migration
	def change
		create_table :invoices do |t|

			t.references	:tax_year
			t.references	:client
			t.date			:date_sent
			t.date			:date_paid
			t.string		:description
			t.integer		:amount

			t.timestamps
		end
	end
end
