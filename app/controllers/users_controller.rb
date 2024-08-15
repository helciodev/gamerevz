class UsersController < ApplicationController
before_action :get_user, except:[:index, :new, :create]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice:"User created successfully ☑️"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show

  end

  def edit

  end
  def update
    if @user.update(user_params)
      redirect_to @user, notice: "User updated successfuly ☑️"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
    flash[:notice] = "Sad to see you leave 😢"
    redirect_to root_url, status: :see_other
  end



  private

  def get_user
    @user = User.find_by(slug:params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
