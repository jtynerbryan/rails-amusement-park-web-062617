class AttractionsController < ApplictionController
	
	def index
		@rides = Attraction.all
	end
end