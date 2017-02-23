class UsersController < ApplicationController
  before_action :set_user

  def index
    @users = User.all
  end

  def show
    @user = User.find(@current_user)
    render json: @user
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = "Thank you for registering!"
      redirect_to users_path
    else
      render 'new'
    end
  end

  def update
      if @user.update(user_params)
        if params[:medication_id]
          @user.medications << Medication.find(params[:medication_id])
        end
        render json: @user
      else
        render json: @user.errors, status: :unprocessable_entity
      end

  end

  def destroy
    @bg_test = BgTest.where(user_id: @current_user)
    # Deletes all Bgs belonging to User
    @bg_test.destroy_all
    @user.destroy
  end
  private
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(@current_user)
  end
  def user_params
    p '*********************************'
    p params
    p '*********************************'
    params.require(:user).permit(:first_name, :last_name, :ideal_bg, :email, :password, :password_confirmation)
  end
end
