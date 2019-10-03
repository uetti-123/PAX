class FacilitiesController < ApplicationController
	def home
		@q = Facility.ransack(params[:q])
		@facilities = @q.result(distinct: true)
	end

	def index
		@q = Facility.ransack(params[:q])
		@facilities = @q.result(distinct: true)
		# .page(params[:page]).per(5).reverse_order
	end

	def show
		@facility = Facility.find(params[:id])
	end

	private
	def facilities_path_with_search_params
	    URI(request.referer).path == '/facilities' ? request.referer : facilities_path
	end

	def facility_params
		params.require(:facility).permit(:image_id, :name, :explanation, :movie, :phone, :address, :postal_code, :email, :region)
	end
end
