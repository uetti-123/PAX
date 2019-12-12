class ReservationsController < ApplicationController
	before_action :authenticate_enduser!
	def new
		@reservation = Reservation.new(reservation_params)
        @room = Room.find(params[:id])
        @reservation.room_id = @room.id
        @reservation.enduser_id = current_enduser.id
        if @room.capacity >= @reservation.people
	       @reservation.save!
	        	@room.room_stock -= 1
	        	redirect_to reserved_path
	    else
	    	flash[:notice] = '宿泊可能人数を超えています'
	    	render facility_path(facility.id)
	    end
	end

	def create
		@reservation = Reservation.new(reservation_params)
		@reservation.save
	end

	def reserved
	end

	def index
		@reservation = Reservation.all
	end

	private
	def reservation_params
		params.require(:reservation).permit(:people, :start_on, :end_on)
	end
end
