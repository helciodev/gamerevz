class SessionsController < ApplicationController


  def new

  end

  def create
    @user = User.find_by(email:params[:email])

    if @user && @user.authenticate(params[:password])
      redirect_to session[:intended_url] || root_url, status: :see_other, notice:"Welcome back #{@user.name}"
      session[:user_id] = @user.id
      session[:intended_url] = nil
    else
      flash.now[:alert] = "User password/email mismatch, please check your credentials"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, status: :see_other
  end
end
