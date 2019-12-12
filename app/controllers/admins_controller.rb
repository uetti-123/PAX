class AdminsController < ApplicationController
	before_action :authenticate_admin!

	def top
	end

	def index
		@q = Owner.ransack(params[:q])
		@owners = @q.result(distinct: true)
		@check = params[:q]
	end

	def admin_facility
		@q = Facility.ransack(params[:q])
		@facilities = @q.result(distinct: true)
		@check = params[:q]
	end
end
