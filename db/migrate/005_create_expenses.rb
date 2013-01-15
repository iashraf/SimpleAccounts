class CreateExpenses < ActiveRecord::Migration
	def change
		create_table :expenses do |t|

			t.date			:date
			t.string		:item
			t.integer		:amount

			t.timestamps
		end
	end
end
