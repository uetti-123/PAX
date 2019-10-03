class FacilitiesController < ApplicationController
	def home
		
	end

	private
	def facility_params
		params.require(:facility).permit(:image)
	end
end
