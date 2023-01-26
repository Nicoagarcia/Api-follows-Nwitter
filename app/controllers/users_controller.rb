class UsersController < ApplicationController
    #include Turbo::Controller
    def index
    
      @users = User.all
  end

  def show
      @user = User.find(params[:id])
      @followers = @user.followers
      @following = @user.followings
  end
    
  def new
      @user = User.new
  end
    
  def create
      @user = User.new(user_params)
      if @user.save
          redirect_to @user
      else
          render 'new'
      end
  end
    
  def edit
      @user = User.find(params[:id])
  end
    
  def update
      @user = User.find(params[:id])
      if @user.update(user_params)
          redirect_to @user
      else
          render 'edit'
      end
  end
    
  def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to users_path
  end
    
  def follow
      @user = User.find(params[:id])
      @user.followers << current_user
      #Turbo.visit("/users")
      #redirect_to users_path
  end
    
  def unfollow
      @user = User.find(params[:id])
      @user.followers.delete(current_user)
      #Turbo.visit("/followers")
      #redirect_to users_path
  end
    
  private
    
  def user_params
      params.require(:user).permit(:name, :email)
  end
end