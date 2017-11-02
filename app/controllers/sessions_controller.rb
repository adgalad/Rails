class SessionsController < ApplicationController

  def create
    begin
      @user = User.from_omniauth(request.env['omniauth.auth'])
      session[:user_id] = @user.id
    rescue
      flash[:warning] = "There was an error while trying to authenticate you..."
    end
    redirect_to @user
  end

  def delete
    if current_user
      session.delete(:user_id)

    end
    redirect_to root_path
  end
end