class SeriesController < ApplicationController
	
	http_basic_authenticate_with name: "admin", password: "password", except: [:index, :show]
	
	def new
		@series = Series.new
	end
  
	def show
		@series = Series.find(params[:id])
	end
	
	def index
		@series = Series.all
	end
 
	def create
#		render text: params[:series].inspect
		@series = Series.new(params[:series].permit(:title, :text))
 		if @series.save
			redirect_to @series
		else
			render 'new'
		end
	end
	
	def edit
		@series = Series.find(params[:id])
	end
	
	def update
		@series = Series.find(params[:id])
		
		if @series.update(params[:series].permit(:title, :text))
			redirect_to @series
		else
			render 'edit'
		end
	end
	
	def destroy
		@series = Series.find(params[:id])
		@series.destroy
 
		#redirect_to series_path
		redirect_to controller: "series" 
	end
	
	private
		def series_params
			params.require(:series).permit(:title, :text)
		end
	
end