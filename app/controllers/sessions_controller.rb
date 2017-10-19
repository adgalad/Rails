class SessionsController < ApplicationController

	def new
		if logged_in?
			redirect_to current_user
		end
  	end

	def create
	  	user = User.find_by(username: params[:session][:username].downcase)
  		if user && user.authenticate(params[:session][:password])
  			log_in user
  			if params[:session][:remember_condition] == '1'
  				remember user
  			else
  				forget user
  			end
	        redirect_to user
	    else
	    	flash.now[:danger] = 'Invalid email/password combination'
	    	render 'new'
	    end

   	end

   	def delete
		log_out
    	redirect_to login_url
   	end

private
    def session_params
       	params.require(:session).permit(:username,:password )
    end
end
