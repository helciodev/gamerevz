module ApplicationHelper
  def rate_bg(rate)

    case rate
      when 1..4
        'bg-red-700'
      when 5..6
        'bg-yellow-500'
      else
        'bg-cyan-700'
    end
  end

end
