class ApplicationController < ActionController::Base

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

  helper_method :rate_bg
end
