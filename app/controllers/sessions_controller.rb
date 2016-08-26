class SessionsController < ApplicationController

  def new
  end

  def create
    p params

    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user
    else
      @errors = ["Login incorrect. Email or password was not entered correctly."]
      redirect_to '/'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
