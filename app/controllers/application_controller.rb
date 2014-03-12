class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #rescue_from Exception, :with => :render_422
  #rescue_from RuntimeError, :with => :render_404
  
  #private
	#def exception
	#	render :template => 'public/422', :layout => false, :status => :not_found
	#end
  
  
  	#def render_422
	#	render :template => 'public/422', :layout => false, :status => :not_found
	#end
  
	#def render_404
	#	render :template => 'public/404', :layout => false, :status => :not_found
	#end
	
end
