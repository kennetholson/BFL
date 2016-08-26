class UsersController < ApplicationController
	def update 
		@user = User.find(params[:id])

		if @user.update(user_params)
			redirect_to @team
		else
			render 'edit'
		end
	end
end
