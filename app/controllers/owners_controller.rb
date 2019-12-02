class OwnersController < ApplicationController
	def owner_home
	end

	def index
		@owner = current_owner
		@rooms = @owner.facility.rooms
	end
end
