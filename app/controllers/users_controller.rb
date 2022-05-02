class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    # @users = User.all
    @users = policy_scope(User)
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window: render_to_string(partial: "info_window", locals: { user: user }),
        image_url: helpers.asset_url("avatar.png")
      }
    end
  end

  def edit
  end

  def show
  end

  def update
		if @user.update(user_params)
		redirect_to @user, notice: 'User was successfully updated'
    else 
		render :edit, status: :unprocessable_entity
    end
	end

  private
  
  def set_user
		@user = User.find(params[:id])
    authorize @user
	end

  def user_params
		params.require(:user).permit(:name, :address,  :photo, :email, :password, :password_confirmation, :current_password)
	end
end
