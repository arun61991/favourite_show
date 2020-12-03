class UsersController < ApplicationController
  helper_method :logged_in?, :current_user
  layout "static"

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to shows_path(@user)
    else
      render :new
    end
  end

  def show
    @user = current_user
    if logged_in?
      if @user == User.find_by(id: params[:id])
        render :layout => "application"
      else
        flash[:danger] = "You don't have access to view that user's settings!"
        redirect_to shows_path(@user)
      end
    else
      redirect_to login_path
    end
  end

  
  private
  def user_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation)
  end

end