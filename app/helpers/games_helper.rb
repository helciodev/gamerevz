module GamesHelper

  def custom_pluralize(objectArr, word)
    objectArr.split('-').size > 1 ? word.pluralize : word
  end

  def format_date (date)
    date.strftime("%Y %B  %d")
  end

  def find_like(review)
    if current_user.present?
      like = review.likes.find_by(user_id: current_user.id) # Find the like associated with the review and user
      Rails.logger.debug("Like found: #{like.inspect}") # Log the like object to the console
      like
    end
  end

end
