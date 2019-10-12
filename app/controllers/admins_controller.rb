class AdminsController < ApplicationController
	def top
	end

	def admin_facility
		@q = Facility.ransack(params[:q])
		@facilities = @q.result(distinct: true)
		@check = params[:q]
	end
end
