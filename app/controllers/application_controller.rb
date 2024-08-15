class ApplicationController < ActionController::Base

  private
  def rate_bg(rate)
    case rate
    when 0..4
      "bg-red-700"
    when 5..6
      "bg-yellow-700"
    else
      "bg-cyan-700"
    end
  end



  def current_user
    User.find_by(id: session[:user_id]) if session[:user_id]
  end


  def require_signin
    session[:intended_url] = request.url

    redirect_to new_session_path, alert: 'You need to sign in first' unless current_user.present?
  end
  helper_method :rate_bg, :current_user


end
