class RidesController < ApplicationController
	
	def new
		@ride = Ride.new(attraction_id: params[:ride][:attraction_id], user_id: params[:ride][:user_id])
		flash[:message] = @ride.take_ride
		redirect_to user_path(@ride.user)
	end
end