class UsersController < ApplicationController


  def index
    # @team = Team.find(params[:team_id])
    # @users = @team.users(params[:id])
  end

  def new
    # # @team = Team.find(params[:team_id])
    # @user = @team.users.new
    @user = User.new
  end

  def show
    # @team = Team.find(params[:team_id])
    # @user = @team.users.find(params[:id])
    @user = User.find(params[:id])
  end



  def create
    # @team = Team.find(params[:team_id])
    p user_params
  # if params[:user][:password] != params[:user][:password_confirmation]
  #   @errors = ["ERROR: Passwords Don't Match!"]
  # else
  @user = User.new(user_params)
  if @user.save
    p "YOUR INSIDE SAVEDDDDD"
    session[:user_id] = @user.id
    redirect_to @user
  else
    redirect_to '/'
  end
  # end
end

  def edit 
    @user = User.find(params[:id])
  end
  
def update
  @user = User.find(params[:id])
  if @user.update(user_params)
   redirect_to @team
 else
   render 'edit'
 end
end
private

def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation, :team_id)
end


end
