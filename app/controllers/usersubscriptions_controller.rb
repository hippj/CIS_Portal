class UsersubscriptionsController < ApplicationController

	# http_basic_authenticate_with name: "user", password: "password", except: [:index, :show]
	
	
	def new
		@usersubscription = Usersubscription.new
	end
  
	def show
		@usersubscription = Usersubscription.find(params[:id])
	end
	
	def index
		@usersubscription = Usersubscription.all
	end
 
	def create
#		render text: params[:usersubscription].inspect
		@usersubscription = Usersubscription.new(params[:usersubscription].permit(:username, :series))
 		if @usersubscription.save
			#redirect_to @usersubscription
			redirect_to controller: "usersubscriptions"
		else
			render 'new'
		end
	end
	
	def edit
		@usersubscription = Usersubscription.find(params[:id])
	end
	
	def update
		@usersubscription = Usersubscription.find(params[:id])
		
		if @usersubscription.update(params[:usersubscription].permit(:username, :series))
			#redirect_to usersubscription_path(@usersubscription)
			#redirect_to controller: "usersubscriptions"
			redirect_to usersubscription_path(@usersubscription)
		else
			render 'edit'
		end
	end
	
	def destroy
		@usersubscription = Usersubscription.find(params[:id])
		@usersubscription.destroy
 
		#redirect_to series_path
		#redirect_to controller: "usersubscriptions" 
		redirect_to usersubscription_path(@usersubscription)
	end
	
	#def addSubscription
	#	redirect_to controller: "events"
	#	#@series = Series.find(params[:id])
	#	#@series.events.create(params[:event].permit(:date, :category, :title, :description, :location))
	#end
	
	private
		def series_params
			params.require(:usersubscription).permit(:username, :series)
		end
end
