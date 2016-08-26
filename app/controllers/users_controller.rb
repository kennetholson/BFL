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

 def create
  user = User.new(user_params)
  if user.save
    session[:user_id] = user.id
    redirect_to '/'
  else
    redirect_to '/signup'
  end
end

private

def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation)
end


end
