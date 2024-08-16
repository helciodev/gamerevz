class ApplicationController < ActionController::Base

  private




  def current_user
    User.find_by(id: session[:user_id]) if session[:user_id]
  end


  def require_signin
    session[:intended_url] = request.url

    redirect_to new_session_path, alert: 'You need to sign in first' unless current_user.present?
  end

  def require_admin
    redirect_to root_url, alert:'Only admin users can access this route.' unless current_user.present? && current_user.admin
  end

  def is_admin?
    current_user && current_user.admin? if current_user
  end

  def is_current_user?(user)
    user == current_user if current_user.present?
  end
  helper_method :current_user, :is_current_user?, :is_admin?


end
