module ApplicationHelper
  
  #this is where the User's selection - 'station' will be compared with the API data - 'results'.
	def hash_and_msg_generator(results, station)

		# we will have a couple messages to tell the user whether or not a bus is coming soon.
		@message = ""
		# we want to provide the user with the Route and Vehicle numbers for the approaching bus(es). 
    # The best way to save two related items is a hash!

		@buses = {}

		results.each do |result|
			if result["TIMEPOINT"].include? station
				# if the User's selection matching an up-coming bus stop in the API data, 
        # we will save that info in our hash
				@buses[result["ROUTE"]] = result["VEHICLE"]
				#the Route is the key and the vehicle is the value
			end
		end
    
		if @buses.count == 0
			#no buses have the User's station as their next stop.
			@message = "Sorry, it's gonna be a while."
		elsif @buses.count == 1
			#one bus will be making the User's station it's next stop
      @message = "A bus is on the way!"
		elsif @buses.count > 1
			#two or more buses will be making the User's station their next stop
			@message = "These buses will be coming soon:"
		else
			#just in case we end up with a negative number somehow - who knows.
			@message = "Oops...I think there was a slight error."
		end
    # end of hash_and_msg_generator(results, station)
	end

end
