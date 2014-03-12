class EventsController < ApplicationController

	# SOURCE:  http://stackoverflow.com/questions/13615544/where-can-i-store-the-password-username-combo-thats-used-in-rails-http-basic-a
	# http_basic_authenticate_with name: => MY_USER, password: => MY_PASS
	# http_basic_authenticate_with name: "user", password: "password"
	http_basic_authenticate_with name: "user", password: "password", except: [:show]
	# http_basic_authenticate_with :name => MY_USER, :password => MY_PASS
	# @seriestitle = Series.find(params[:series_id]).title
	# http_basic_authenticate_with :name => @series_id, password: "password"
	#authenticate_or_request_with_http_basic "My custom message" do |user_name, password|
	#	user_name == "user" && password == "password"
	#end
	#def authentication_request(controller, realm)
	#	super
	#		controller.response_body = "My new message.\n"
	#end
	
 
	def new
		@series = Series.find(params[:series_id])
		@event = @series.events.new
	end
 
	def create
		@series = Series.find(params[:series_id])
		@event = @series.events.create(params[:event].permit(:date, :category, :title, :description, :location))
			#if @event.save
			#	redirect_to series_path(@series)
			#else	
				#render 'create'
				#for @event.errors.full_messages.each do |msg|
			#end
		redirect_to series_path(@series)
	end

	def edit
		@series = Series.find(params[:series_id])
		@event = Event.find(params[:id])
		#@event = Event.find(params[:id])
	end
	
	def show
		@event = Event.find(params[:id])
		# @event.series
	end
  
	def update
		@series = Series.find(params[:series_id])
		@event = Event.find(params[:id])
		
		if @event.update(params[:event].permit(:date, :category, :title, :description, :location))
			redirect_to [@event.series, @event]
		else
			render 'edit'
		end
	end
  
#  def edit
#	@series = Series.find(params[:series_id])
#	@event = @series.events.find(params[:id])
#  end
 
	def destroy
		@series = Series.find(params[:series_id])
		@event = @series.events.find(params[:id])
		@event.destroy
		redirect_to series_path(@series)
	end
	
	private
		def event_params
			params.require(:event).permit(:date, :category, :title, :description, :location)
		end

end
