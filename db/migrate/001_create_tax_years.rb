class CreateTaxYears < ActiveRecord::Migration
	def change
		create_table :tax_years do |t|

			t.string	:title
			t.date		:start_date
			t.date		:end_date

		end

		# create tax years 2000 - 2020
		TaxYear.create :title => "2000-2001", :start_date => "06/04/2000", :end_date => "05/04/2001"
		TaxYear.create :title => "2001-2002", :start_date => "06/04/2001", :end_date => "05/04/2002"
		TaxYear.create :title => "2002-2003", :start_date => "06/04/2002", :end_date => "05/04/2003"
		TaxYear.create :title => "2003-2004", :start_date => "06/04/2003", :end_date => "05/04/2004"
		TaxYear.create :title => "2004-2005", :start_date => "06/04/2004", :end_date => "05/04/2005"
		TaxYear.create :title => "2005-2006", :start_date => "06/04/2005", :end_date => "05/04/2006"
		TaxYear.create :title => "2006-2007", :start_date => "06/04/2006", :end_date => "05/04/2007"
		TaxYear.create :title => "2007-2008", :start_date => "06/04/2007", :end_date => "05/04/2008"
		TaxYear.create :title => "2008-2009", :start_date => "06/04/2008", :end_date => "05/04/2009"
		TaxYear.create :title => "2009-2010", :start_date => "06/04/2009", :end_date => "05/04/2010"
		TaxYear.create :title => "2010-2011", :start_date => "06/04/2010", :end_date => "05/04/2011"
		TaxYear.create :title => "2011-2012", :start_date => "06/04/2011", :end_date => "05/04/2012"
		TaxYear.create :title => "2012-2013", :start_date => "06/04/2012", :end_date => "05/04/2013"
		TaxYear.create :title => "2013-2014", :start_date => "06/04/2013", :end_date => "05/04/2014"
		TaxYear.create :title => "2014-2015", :start_date => "06/04/2014", :end_date => "05/04/2015"
		TaxYear.create :title => "2015-2016", :start_date => "06/04/2015", :end_date => "05/04/2016"
		TaxYear.create :title => "2016-2017", :start_date => "06/04/2016", :end_date => "05/04/2017"
		TaxYear.create :title => "2017-2018", :start_date => "06/04/2017", :end_date => "05/04/2018"
		TaxYear.create :title => "2018-2019", :start_date => "06/04/2018", :end_date => "05/04/2019"
		TaxYear.create :title => "2019-2020", :start_date => "06/04/2019", :end_date => "05/04/2020"

	end
end
