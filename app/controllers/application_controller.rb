class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	before_action :configure_permitted_parameters, if: :devise_controller?

	#def authenticate!
  		#if admin_signed_in?
    		#authenticate_admin!
  		#elsif enduser_signed_in?
    		#authenticate_enduser!
    	#else
    		#authenticate_owner!
  		#end
	#end

	#before_action :search

	def after_sign_in_path_for(resource)
	  case resource
      when Enduser
        root_path
      when Admin
        home_path
      when Owner
       	owner_home_path
      end
	end

	def after_sign_out_path_for(resource)
      root_path
  end

  protected
   def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :name_kana, :email, :tell, :address, :postal_code])
   end
end
