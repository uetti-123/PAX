class AdminsController < ApplicationController
	def top
	end

	def admin_enduser
		@q = Enduser.ransack(params[:q])
		@endusers = @q.result(distinct: true)
		#@checkを入れビューでのif文に書くことでparamsの値がnilと時は何も表示させない。
		@check = params[:q]
	end

	def admin_facility
		@q = Facility.ransack(params[:q])
		@facilities = @q.result(distinct: true)
		@check = params[:q]
	end

	def new_facility
		@facility = Facility.new
		@facility.rooms.build
	end

	def facility_params
		params.require(:facility).permit(:name, :address, :postal_code, :phone, :image_id, :email, :region, :explanation,
			rooms_attributes:[:name, :number, :capacity, :information, :price])
	end
end
