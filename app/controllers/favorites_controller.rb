class FavoritesController < ApplicationController
	before_action :set_variables
	def favorite
		favorite = current_enduser.favorites.new(facility_id: @facility.id)
    	favorite.save
	end
	end

	def unfavorite
		favorite = current_enduser.favorites.find_by(facility_id: @facility.id)
	end

	def index
	end

	private
	def set_variables
	    @facility = Facility.find(params[:facility_id])
	    @id_name = "#favorite-link-#{@facility.id}"
	end
end
