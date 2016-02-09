require "csv"

namespace :import do

		desc "Import Itemsmaster"
		task itemmaster: :environment do
		counter = 0

		CSV.foreach("C:/FTP/Inbound/itemmaster.csv") do |row|
		upc,desc1,desc2,color,size,price = row
		itemmaster = Itemmaster.create(upc: upc,desc1:desc1,desc2:desc2,color:color,size:size,price:price)
		counter +=1 if itemmaster.persisted?

	end

	puts "Imported #{counter} Items"
	end


		desc "Import QOH"
		task qoh: :environment do
		counter = 0

		CSV.foreach("C:/FTP/Inbound/qoh.csv") do |row|
		upc,qoh = row
		qoh = Qoh.create(upc: upc,qoh:qoh)
		counter +=1 if qoh.persisted?
	end

	puts "Imported #{counter} Items"
	end
end
