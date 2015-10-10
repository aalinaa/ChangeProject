class ApplicationController < ActionController::Base
	before_action :is_registred
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

    protected
    	def authorize
    		unless User.find_by(id: session[:user_id])
    			redirect_to login_url, notice: "log in, please"        
        end
    	end

      def is_registred
        unless authorize
          unless User.find_by(id: session[:user_id]).registred
              redirect_to confirm_url(id: session[:user_id], notice: "confirm your email, please")
          end
        end
      end
	
end
