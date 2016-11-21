require 'pry'

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}




def nyc_pigeon_organizer(pigeon_data)
  reformat_hash = {}
  pigeon_data.each do |spec, spec_hash|

  	spec_hash.each do |desc, desc_array|
  		desc_array.each do |name|
  			#binding.pry
			reformat_hash[name] ||= {}
			reformat_hash[name][spec] ||= []
  			reformat_hash[name][spec] << desc.to_s
  		end
  	end
  end
  reformat_hash
end


#nyc_pigeon_organizer (pigeon_data)