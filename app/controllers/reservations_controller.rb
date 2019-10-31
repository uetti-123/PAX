class ReservationsController < ApplicationController
	def new
		@reservation = Reservation.new(reservation_params)
        @room = Room.find(params[:id])
        @reservation.room_id = @room.id
        @reservation.enduser_id = current_enduser.id
        if @reservation.save!
          redirect_to reserved_path
        else 
          render :new
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
