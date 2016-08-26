class UsersController < ApplicationController

	def update
		@user = User.find(params[:id])

		if @user.update(user_params)
			redirect_to @team
		else
			render 'edit'
		end
	end

 def new
 end

 def show

  @user = User.find(params[:id])
 end

 def create
  if params[:user][:password] != params[:user][:password_confirmation]
    @errors = ["ERROR: Passwords Don't Match!"]
  else
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to "/users/#{user.id}"
    else
      redirect_to '/'
    end
  end
end

private

def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation)
end


end
