class EndusersController < ApplicationController
  before_action :authenticate_enduser!
	def show
		@enduser = Enduser.find(params[:id])
    @reservation = @enduser.reservations.all
	end

  def index
    @q = Enduser.ransack(params[:q])
    @endusers = @q.result(distinct: true)
    #@checkを入れビューでのif文に書くことでparamsの値がnilと時は何も表示させない。
    @check = params[:q]
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

   def destroy
      Enduser.find(params[:id]).destroy
      redirect_to home_path
  end


	private
	def enduser_params
      params.require(:enduser).permit(:name, :name_kana, :postal_code, :address, :tell, :email)
  	end
end
