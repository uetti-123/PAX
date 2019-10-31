class FeaturesController < ApplicationController
	def new
		@feature = Feature.new
	end

	def index
		@features = Feature.all
	end

	def create
		@feature = Feature.new(feature_params)
		@feature.save
		redirect_to top_path
	end

	def show
		@feature = Feature.find(params[:id])
		@facilities = Facility.search(params[:search])
		@facility = Facility.find(params[:id])
	end

	def segment
		@feature = Feature.find(params[:feature_id])
	end

	def edit
		@feature = Feature.find(params[:id])
	end

	def update
	end

	def destroy
		Feature.find(params[:id]).destroy
		redirect_to top_path
	end

	private
	def feature_params
		params.require(:feature).permit(:id, :title, :image)
	end
	
end
