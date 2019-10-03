class EndusersController < ApplicationController
	def show
		@enduser = Enduser.find(params[:id])
	end

	def edit
		@enduser = Enduser.find(params[:id])
	  if @enduser == current_enduser
      elsif admin_signed_in?
      else
        redirect_to enduser_path(@enduser)
      end
	end

	def update
    	@enduser = Enduser.find(params[:id])
      if @enduser.update(enduser_params)
         redirect_to enduser_path(@enduser.id)
      else
        flash.now[:alert] = "正しく記入してください。"
      	render :edit
      end
  	end

	private
	def enduser_params
      params.require(:enduser).permit(:name, :name_kana, :postal_code, :address, :tell, :email)
  	end
end
