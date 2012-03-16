class UserSessionController < ApplicationController
  def new
  end

  def create
    user = User.find(request.env['omniauth.auth']['uid']) if request.env['omniauth.auth']
    if user
      session[:user_id] = user.id
        if params[:commit] == 'Create User'
          redirect_to user_path user
        else
          redirect_to dashboard_path, notice: 'Welcome back!'
        end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'You have logged out'
  end

  def failure
    redirect_to login_path, alert: 'Invalid email or password, please try again'
  end
end
