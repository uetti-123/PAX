class FacilitiesController < ApplicationController
	def home
		@q = Facility.ransack(params[:q])
		@facilities = @q.result(distinct: true)
	end

	def search
	end

	def index
		@q = Facility.ransack(params[:q])
		@facilities = @q.result(distinct: true)
		# .page(params[:page]).per(5).reverse_order
		#@price = @facilities.rooms.price.minimum
	end

	def show
		@facility = Facility.find(params[:id])
		@image = @facility.images
	end

	def new
		@facility = Facility.new
		@images = @facility.images.build
		@room = @facility.rooms.build
		@imgae_room = @room.room_images.build
	end

	def create
		@facility = Facility.new(facility_params)
		@facility.save
		redirect_to new_facility_path
	end

	def edit
		@facility = Facility.find(params[:id])
	end

	def update
		@facility = Facility.find(params[:id])
	 if @facility.update(facility_params)
	 	flash[:notice] = "編集しました。"
  		redirect_to facility_path(@facility.id)
  	 else 
  	 	flash[:notice] = "編集に失敗しました。"
  	 	render ("facilities/edit")
  	 end
	end

	def desyroy
		Facility.find(params[:id]).destroy
    end

	private
	def facilities_path_with_search_params
	    URI(request.referer).path == '/facilities' ? request.referer : facilities_path
	end

	def facility_params
		params.require(:facility).permit(:name, :explanation, :movie, :phone, :address, :postal_code, :email, :region, 
			images_attributes: [:id, :image, :_destroy],
			rooms_attributes: [:id, :name, :number, :capacity, :information, :price, :_destroy,
			room_images_attributes: [:id, :image, :_destroy]])
	end
end
