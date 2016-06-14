class SessionsController < ApplicationController

  def create
    begin
      p "8 " * 90
      @mentor = Mentor.from_omniauth(request.env['omniauth.auth'])
      p "7 " * 90
      binding.pry
      session[:user_id] = @user.id
      flash[:success] = "Welcome, #{@user.name}!"
      p "6 " * 90
    rescue
      p "5 " * 90
      flash[:warning] = "There was an error while trying to authenticate you..."
    end
    p "4 " * 90
    redirect_to root_path
  end

  def destroy
    if current_user
      session.delete(:user_id)
      flash[:success] = 'See you!'
    end
    redirect_to root_path
  end

end
